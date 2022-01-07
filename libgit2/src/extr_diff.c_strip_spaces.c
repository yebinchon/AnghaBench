
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int git__isspace (char) ;
 int git_buf_truncate (TYPE_1__*,size_t) ;

__attribute__((used)) static void strip_spaces(git_buf *buf)
{
 char *src = buf->ptr, *dst = buf->ptr;
 char c;
 size_t len = 0;

 while ((c = *src++) != '\0') {
  if (!git__isspace(c)) {
   *dst++ = c;
   len++;
  }
 }

 git_buf_truncate(buf, len);
}
