
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_text_contains_nul (int const*) ;

int git_buf_contains_nul(const git_buf *buf)
{
 return git_buf_text_contains_nul(buf);
}
