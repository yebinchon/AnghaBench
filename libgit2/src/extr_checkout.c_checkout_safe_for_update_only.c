
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int mode_t ;
struct TYPE_4__ {int stat_calls; } ;
struct TYPE_5__ {TYPE_1__ perfdata; } ;
typedef TYPE_2__ checkout_data ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int GIT_ERROR_OS ;
 scalar_t__ errno ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ p_lstat (char const*,struct stat*) ;

__attribute__((used)) static int checkout_safe_for_update_only(
 checkout_data *data, const char *path, mode_t expected_mode)
{
 struct stat st;

 data->perfdata.stat_calls++;

 if (p_lstat(path, &st) < 0) {

  if (errno == ENOENT || errno == ENOTDIR)
   return 0;


  git_error_set(GIT_ERROR_OS, "failed to stat '%s'", path);
  return -1;
 }


 if ((st.st_mode & ~0777) == (expected_mode & ~0777))
  return 1;

 return 0;
}
