
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_2__ {int error_buf; } ;


 TYPE_1__* GIT_GLOBAL ;
 int git__free (char*) ;
 int git_buf_clear (int *) ;
 int git_buf_puts (int *,char*) ;
 int set_error_from_buffer (int) ;

__attribute__((used)) static void set_error(int error_class, char *string)
{
 git_buf *buf = &GIT_GLOBAL->error_buf;

 git_buf_clear(buf);
 if (string) {
  git_buf_puts(buf, string);
  git__free(string);
 }

 set_error_from_buffer(error_class);
}
