
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_12__ {int path; } ;
typedef TYPE_2__ git_diff_file ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_11__ {int stat_calls; } ;
struct TYPE_14__ {int strategy; TYPE_1__ perfdata; } ;
typedef TYPE_4__ checkout_data ;


 int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECKOUT ;
 int GIT_FILEMODE_COMMIT ;
 scalar_t__ checkout_target_fullpath (TYPE_3__**,TYPE_4__*,int ) ;
 int checkout_update_index (TYPE_4__*,TYPE_2__ const*,struct stat*) ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ p_stat (int ,struct stat*) ;

__attribute__((used)) static int checkout_submodule_update_index(
 checkout_data *data,
 const git_diff_file *file)
{
 git_buf *fullpath;
 struct stat st;


 if ((data->strategy & GIT_CHECKOUT_DONT_UPDATE_INDEX) != 0)
  return 0;

 if (checkout_target_fullpath(&fullpath, data, file->path) < 0)
  return -1;

 data->perfdata.stat_calls++;
 if (p_stat(fullpath->ptr, &st) < 0) {
  git_error_set(
   GIT_ERROR_CHECKOUT, "could not stat submodule %s\n", file->path);
  return GIT_ENOTFOUND;
 }

 st.st_mode = GIT_FILEMODE_COMMIT;

 return checkout_update_index(data, file, &st);
}
