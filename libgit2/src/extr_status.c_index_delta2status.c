
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int git_status_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_7__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
 unsigned int GIT_STATUS_CONFLICTED ;
 unsigned int GIT_STATUS_CURRENT ;
 unsigned int GIT_STATUS_INDEX_DELETED ;
 unsigned int GIT_STATUS_INDEX_MODIFIED ;
 unsigned int GIT_STATUS_INDEX_NEW ;
 unsigned int GIT_STATUS_INDEX_RENAMED ;
 unsigned int GIT_STATUS_INDEX_TYPECHANGE ;
 int git_oid_equal (int *,int *) ;

__attribute__((used)) static unsigned int index_delta2status(const git_diff_delta *head2idx)
{
 git_status_t st = GIT_STATUS_CURRENT;

 switch (head2idx->status) {
 case 134:
 case 132:
  st = GIT_STATUS_INDEX_NEW;
  break;
 case 131:
  st = GIT_STATUS_INDEX_DELETED;
  break;
 case 130:
  st = GIT_STATUS_INDEX_MODIFIED;
  break;
 case 129:
  st = GIT_STATUS_INDEX_RENAMED;

  if (!git_oid_equal(&head2idx->old_file.id, &head2idx->new_file.id))
   st |= GIT_STATUS_INDEX_MODIFIED;
  break;
 case 128:
  st = GIT_STATUS_INDEX_TYPECHANGE;
  break;
 case 133:
  st = GIT_STATUS_CONFLICTED;
  break;
 default:
  break;
 }

 return st;
}
