
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int git_buf ;
struct TYPE_2__ {int error_buf; } ;
typedef int DWORD ;


 int GIT_ERROR_OS ;
 TYPE_1__* GIT_GLOBAL ;
 int GetLastError () ;
 int SetLastError (int ) ;
 int errno ;
 int git__free (char*) ;
 int git_buf_PUTS (int *,char*) ;
 int git_buf_clear (int *) ;
 int git_buf_oom (int *) ;
 int git_buf_puts (int *,char*) ;
 int git_buf_vprintf (int *,char const*,int ) ;
 char* git_win32_get_error_message (int ) ;
 int set_error_from_buffer (int) ;
 char* strerror (int) ;

void git_error_vset(int error_class, const char *fmt, va_list ap)
{



 int error_code = (error_class == GIT_ERROR_OS) ? errno : 0;
 git_buf *buf = &GIT_GLOBAL->error_buf;

 git_buf_clear(buf);
 if (fmt) {
  git_buf_vprintf(buf, fmt, ap);
  if (error_class == GIT_ERROR_OS)
   git_buf_PUTS(buf, ": ");
 }

 if (error_class == GIT_ERROR_OS) {
  if (error_code)
   git_buf_puts(buf, strerror(error_code));

  if (error_code)
   errno = 0;
 }

 if (!git_buf_oom(buf))
  set_error_from_buffer(error_class);
}
