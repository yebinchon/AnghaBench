
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 scalar_t__ git_buf_joinpath (int *,char const*,char const*) ;
 int git_buf_quote (int *) ;

__attribute__((used)) static int diff_delta_format_path(
 git_buf *out, const char *prefix, const char *filename)
{
 if (git_buf_joinpath(out, prefix, filename) < 0)
  return -1;

 return git_buf_quote(out);
}
