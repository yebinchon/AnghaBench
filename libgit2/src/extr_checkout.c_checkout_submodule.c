
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int path; } ;
typedef TYPE_2__ git_diff_file ;
struct TYPE_10__ {int dir_mode; int target_directory; } ;
struct TYPE_12__ {int strategy; int repo; TYPE_1__ opts; } ;
typedef TYPE_3__ checkout_data ;


 int GIT_CHECKOUT_UPDATE_ONLY ;
 int GIT_ENOTFOUND ;
 int MKDIR_NORMAL ;
 int MKDIR_REMOVE_EXISTING ;
 int checkout_mkdir (TYPE_3__*,int ,int ,int ,int ) ;
 int checkout_submodule_update_index (TYPE_3__*,TYPE_2__ const*) ;
 int git_error_clear () ;
 int git_submodule_lookup (int *,int ,int ) ;
 int should_remove_existing (TYPE_3__*) ;

__attribute__((used)) static int checkout_submodule(
 checkout_data *data,
 const git_diff_file *file)
{
 bool remove_existing = should_remove_existing(data);
 int error = 0;


 if ((data->strategy & GIT_CHECKOUT_UPDATE_ONLY) != 0)
  return 0;

 if ((error = checkout_mkdir(
   data,
   file->path, data->opts.target_directory, data->opts.dir_mode,
   remove_existing ? MKDIR_REMOVE_EXISTING : MKDIR_NORMAL)) < 0)
  return error;

 if ((error = git_submodule_lookup(((void*)0), data->repo, file->path)) < 0) {



  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   return checkout_submodule_update_index(data, file);
  }

  return error;
 }
 return checkout_submodule_update_index(data, file);
}
