
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 scalar_t__ git_buf_putc (int *,char) ;
 scalar_t__ git_buf_puts (int *,char const*) ;

__attribute__((used)) static int conflict_entry_name(
 git_buf *out,
 const char *side_name,
 const char *filename)
{
 if (git_buf_puts(out, side_name) < 0 ||
  git_buf_putc(out, ':') < 0 ||
  git_buf_puts(out, filename) < 0)
  return -1;

 return 0;
}
