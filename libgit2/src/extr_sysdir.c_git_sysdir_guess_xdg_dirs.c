
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int get_passwd_home (TYPE_1__*,scalar_t__) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int git__getenv (TYPE_1__*,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_error_clear () ;
 int git_win32__find_xdg_dirs (TYPE_1__*) ;

__attribute__((used)) static int git_sysdir_guess_xdg_dirs(git_buf *out)
{



 git_buf env = GIT_BUF_INIT;
 int error;
 uid_t uid, euid;

 uid = getuid();
 euid = geteuid();





 if (uid == euid) {
  if ((error = git__getenv(&env, "XDG_CONFIG_HOME")) == 0)
   error = git_buf_joinpath(out, env.ptr, "git");

  if (error == GIT_ENOTFOUND && (error = git__getenv(&env, "HOME")) == 0)
   error = git_buf_joinpath(out, env.ptr, ".config/git");
 } else {
  if ((error = get_passwd_home(&env, euid)) == 0)
   error = git_buf_joinpath(out, env.ptr, ".config/git");
 }

 if (error == GIT_ENOTFOUND) {
  git_error_clear();
  error = 0;
 }

 git_buf_dispose(&env);
 return error;

}
