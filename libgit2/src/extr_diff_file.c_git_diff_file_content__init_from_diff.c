
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int flags; TYPE_1__* file; int repo; int driver; int src; } ;
typedef TYPE_2__ git_diff_file_content ;
struct TYPE_12__ {int path; } ;
struct TYPE_14__ {int status; TYPE_1__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
struct TYPE_11__ {int flags; } ;
struct TYPE_15__ {TYPE_10__ opts; int attrsession; int new_src; int old_src; int repo; } ;
typedef TYPE_4__ git_diff ;
 int GIT_DIFF_FLAG__NO_DATA ;
 int GIT_DIFF_SHOW_UNTRACKED_CONTENT ;
 int diff_file_content_init_common (TYPE_2__*,TYPE_10__*) ;
 scalar_t__ git_diff_driver_lookup (int *,int ,int *,int ) ;
 int memset (TYPE_2__*,int ,int) ;

int git_diff_file_content__init_from_diff(
 git_diff_file_content *fc,
 git_diff *diff,
 git_diff_delta *delta,
 bool use_old)
{
 bool has_data = 1;

 memset(fc, 0, sizeof(*fc));
 fc->repo = diff->repo;
 fc->file = use_old ? &delta->old_file : &delta->new_file;
 fc->src = use_old ? diff->old_src : diff->new_src;

 if (git_diff_driver_lookup(&fc->driver, fc->repo,
      &diff->attrsession, fc->file->path) < 0)
  return -1;

 switch (delta->status) {
 case 134:
  has_data = !use_old; break;
 case 132:
  has_data = use_old; break;
 case 128:
  has_data = !use_old &&
   (diff->opts.flags & GIT_DIFF_SHOW_UNTRACKED_CONTENT) != 0;
  break;
 case 129:
 case 131:
 case 133:
 case 130:
  break;
 default:
  has_data = 0;
  break;
 }

 if (!has_data)
  fc->flags |= GIT_DIFF_FLAG__NO_DATA;

 return diff_file_content_init_common(fc, &diff->opts);
}
