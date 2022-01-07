
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_2__ {int error_buf; } ;


 TYPE_1__* GIT_GLOBAL ;
 int assert (char const*) ;
 int git_buf_clear (int *) ;
 int git_buf_oom (int *) ;
 int git_buf_puts (int *,char const*) ;
 int set_error_from_buffer (int) ;

void git_error_set_str(int error_class, const char *string)
{
 git_buf *buf = &GIT_GLOBAL->error_buf;

 assert(string);

 if (!string)
  return;

 git_buf_clear(buf);
 git_buf_puts(buf, string);
 if (!git_buf_oom(buf))
  set_error_from_buffer(error_class);
}
