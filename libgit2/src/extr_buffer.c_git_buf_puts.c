
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (char const*) ;
 int git_buf_put (int *,char const*,int ) ;
 int strlen (char const*) ;

int git_buf_puts(git_buf *buf, const char *string)
{
 assert(string);
 return git_buf_put(buf, string, strlen(string));
}
