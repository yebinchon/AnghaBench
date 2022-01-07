
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_8__ {int stat_calls; } ;
struct TYPE_7__ {int target_directory; } ;
struct TYPE_9__ {TYPE_2__ perfdata; TYPE_1__ opts; } ;
typedef TYPE_3__ checkout_data ;


 scalar_t__ ENOENT ;
 int GIT_EEXISTS ;
 int GIT_ERROR_OS ;
 unsigned int GIT_MKDIR_SKIP_LAST ;
 int GIT_RMDIR_REMOVE_FILES ;
 unsigned int MKDIR_NORMAL ;
 unsigned int MKDIR_REMOVE_EXISTING ;
 int checkout_mkdir (TYPE_3__*,char const*,int ,unsigned int,unsigned int) ;
 scalar_t__ errno ;
 int git_error_clear () ;
 int git_error_set (int ,char*,char const*) ;
 int git_futils_rmdir_r (char const*,int *,int ) ;
 scalar_t__ p_lstat (char const*,struct stat*) ;
 int should_remove_existing (TYPE_3__*) ;

__attribute__((used)) static int mkpath2file(
 checkout_data *data, const char *path, unsigned int mode)
{
 struct stat st;
 bool remove_existing = should_remove_existing(data);
 unsigned int flags =
  (remove_existing ? MKDIR_REMOVE_EXISTING : MKDIR_NORMAL) |
  GIT_MKDIR_SKIP_LAST;
 int error;

 if ((error = checkout_mkdir(
   data, path, data->opts.target_directory, mode, flags)) < 0)
  return error;

 if (remove_existing) {
  data->perfdata.stat_calls++;

  if (p_lstat(path, &st) == 0) {






   error = git_futils_rmdir_r(path, ((void*)0), GIT_RMDIR_REMOVE_FILES);
  } else if (errno != ENOENT) {
   git_error_set(GIT_ERROR_OS, "failed to stat '%s'", path);
   return GIT_EEXISTS;
  } else {
   git_error_clear();
  }
 }

 return error;
}
