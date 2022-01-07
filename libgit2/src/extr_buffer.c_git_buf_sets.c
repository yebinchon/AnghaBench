
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_set (int *,char const*,int ) ;
 int strlen (char const*) ;

int git_buf_sets(git_buf *buf, const char *string)
{
 return git_buf_set(buf, string, string ? strlen(string) : 0);
}
