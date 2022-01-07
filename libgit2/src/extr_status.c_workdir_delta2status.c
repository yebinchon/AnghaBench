
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int git_status_t ;
struct TYPE_9__ {int id; int flags; int size; int mode; int path; } ;
struct TYPE_8__ {int id; int flags; int size; int mode; int path; } ;
struct TYPE_10__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
struct TYPE_11__ {int new_src; int old_src; } ;
typedef TYPE_4__ git_diff ;
 int GIT_DIFF_FLAG_VALID_ID ;
 int GIT_ITERATOR_TYPE_WORKDIR ;
 unsigned int GIT_STATUS_CONFLICTED ;
 unsigned int GIT_STATUS_CURRENT ;
 unsigned int GIT_STATUS_IGNORED ;
 unsigned int GIT_STATUS_WT_DELETED ;
 unsigned int GIT_STATUS_WT_MODIFIED ;
 unsigned int GIT_STATUS_WT_NEW ;
 unsigned int GIT_STATUS_WT_RENAMED ;
 unsigned int GIT_STATUS_WT_TYPECHANGE ;
 unsigned int GIT_STATUS_WT_UNREADABLE ;
 int git_diff__oid_for_file (int *,TYPE_4__*,int ,int ,int ) ;
 int git_oid_equal (int *,int *) ;
 int git_oid_is_zero (int *) ;

__attribute__((used)) static unsigned int workdir_delta2status(
 git_diff *diff, git_diff_delta *idx2wd)
{
 git_status_t st = GIT_STATUS_CURRENT;

 switch (idx2wd->status) {
 case 137:
 case 135:
 case 128:
  st = GIT_STATUS_WT_NEW;
  break;
 case 129:
  st = GIT_STATUS_WT_UNREADABLE;
  break;
 case 134:
  st = GIT_STATUS_WT_DELETED;
  break;
 case 132:
  st = GIT_STATUS_WT_MODIFIED;
  break;
 case 133:
  st = GIT_STATUS_IGNORED;
  break;
 case 131:
  st = GIT_STATUS_WT_RENAMED;

  if (!git_oid_equal(&idx2wd->old_file.id, &idx2wd->new_file.id)) {



   if (git_oid_is_zero(&idx2wd->old_file.id) &&
    diff->old_src == GIT_ITERATOR_TYPE_WORKDIR &&
    !git_diff__oid_for_file(
     &idx2wd->old_file.id, diff, idx2wd->old_file.path,
     idx2wd->old_file.mode, idx2wd->old_file.size))
   idx2wd->old_file.flags |= GIT_DIFF_FLAG_VALID_ID;

   if (git_oid_is_zero(&idx2wd->new_file.id) &&
    diff->new_src == GIT_ITERATOR_TYPE_WORKDIR &&
    !git_diff__oid_for_file(
     &idx2wd->new_file.id, diff, idx2wd->new_file.path,
     idx2wd->new_file.mode, idx2wd->new_file.size))
    idx2wd->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;

   if (!git_oid_equal(&idx2wd->old_file.id, &idx2wd->new_file.id))
    st |= GIT_STATUS_WT_MODIFIED;
  }
  break;
 case 130:
  st = GIT_STATUS_WT_TYPECHANGE;
  break;
 case 136:
  st = GIT_STATUS_CONFLICTED;
  break;
 default:
  break;
 }

 return st;
}
