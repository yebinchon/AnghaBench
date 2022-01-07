
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_dir; } ;
typedef int git_buf ;


 int ERANGE ;
 int GIT_ERROR_OS ;
 int _SC_GETPW_R_SIZE_MAX ;
 int assert (int *) ;
 int getpwuid_r (int ,struct passwd*,char*,long,struct passwd**) ;
 int git__free (char*) ;
 char* git__realloc (char*,long) ;
 int git_buf_puts (int *,int ) ;
 int git_error_set (int ,char*) ;
 long sysconf (int ) ;

__attribute__((used)) static int get_passwd_home(git_buf *out, uid_t uid)
{
 struct passwd pwd, *pwdptr;
 char *buf = ((void*)0);
 long buflen;
 int error;

 assert(out);

 if ((buflen = sysconf(_SC_GETPW_R_SIZE_MAX)) == -1)
  buflen = 1024;

 do {
  buf = git__realloc(buf, buflen);
  error = getpwuid_r(uid, &pwd, buf, buflen, &pwdptr);
  buflen *= 2;
 } while (error == ERANGE && buflen <= 8192);

 if (error) {
  git_error_set(GIT_ERROR_OS, "failed to get passwd entry");
  goto out;
 }

 if (!pwdptr) {
  git_error_set(GIT_ERROR_OS, "no passwd entry found for user");
  goto out;
 }

 if ((error = git_buf_puts(out, pwdptr->pw_dir)) < 0)
  goto out;

out:
 git__free(buf);
 return error;
}
