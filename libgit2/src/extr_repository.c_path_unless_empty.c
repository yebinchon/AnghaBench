
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 char const* git_buf_cstr (int *) ;
 scalar_t__ git_buf_len (int *) ;

__attribute__((used)) static const char *path_unless_empty(git_buf *buf)
{
 return git_buf_len(buf) > 0 ? git_buf_cstr(buf) : ((void*)0);
}
