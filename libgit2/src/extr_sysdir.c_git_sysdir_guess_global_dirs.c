
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 int get_passwd_home (int *,scalar_t__) ;
 char* getenv (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int git__getenv (int *,char*) ;
 int git_error_clear () ;
 int git_win32__find_global_dirs (int *) ;

__attribute__((used)) static int git_sysdir_guess_global_dirs(git_buf *out)
{



 int error;
 uid_t uid, euid;
 const char *sandbox_id;

 uid = getuid();
 euid = geteuid();





 sandbox_id = getenv("APP_SANDBOX_CONTAINER_ID");
 if (!sandbox_id && uid == euid)
     error = git__getenv(out, "HOME");
 else
     error = get_passwd_home(out, euid);

 if (error == GIT_ENOTFOUND) {
  git_error_clear();
  error = 0;
 }

 return error;

}
