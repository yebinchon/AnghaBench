
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_12__ {int path; int mode; int id; } ;
typedef TYPE_1__ git_diff_file ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_14__ {int strategy; int reload_submodules; } ;
typedef TYPE_3__ checkout_data ;


 int GIT_CHECKOUT_DONT_UPDATE_INDEX ;
 int GIT_CHECKOUT_UPDATE_ONLY ;
 int checkout_safe_for_update_only (TYPE_3__*,int ,int ) ;
 scalar_t__ checkout_target_fullpath (TYPE_2__**,TYPE_3__*,int ) ;
 int checkout_update_index (TYPE_3__*,TYPE_1__ const*,struct stat*) ;
 int checkout_write_content (TYPE_3__*,int *,int ,int *,int ,struct stat*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int checkout_blob(
 checkout_data *data,
 const git_diff_file *file)
{
 git_buf *fullpath;
 struct stat st;
 int error = 0;

 if (checkout_target_fullpath(&fullpath, data, file->path) < 0)
  return -1;

 if ((data->strategy & GIT_CHECKOUT_UPDATE_ONLY) != 0) {
  int rval = checkout_safe_for_update_only(
   data, fullpath->ptr, file->mode);

  if (rval <= 0)
   return rval;
 }

 error = checkout_write_content(
  data, &file->id, fullpath->ptr, ((void*)0), file->mode, &st);


 if (!error && (data->strategy & GIT_CHECKOUT_DONT_UPDATE_INDEX) == 0)
  error = checkout_update_index(data, file, &st);


 if (!error && strcmp(file->path, ".gitmodules") == 0)
  data->reload_submodules = 1;

 return error;
}
