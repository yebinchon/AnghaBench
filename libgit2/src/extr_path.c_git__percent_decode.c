
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int assert (int) ;
 int git__fromhex (char const) ;
 int git_buf_clear (int *) ;
 scalar_t__ git_buf_putc (int *,char) ;
 scalar_t__ strlen (char const*) ;

int git__percent_decode(git_buf *decoded_out, const char *input)
{
 int len, hi, lo, i;
 assert(decoded_out && input);

 len = (int)strlen(input);
 git_buf_clear(decoded_out);

 for(i = 0; i < len; i++)
 {
  char c = input[i];

  if (c != '%')
   goto append;

  if (i >= len - 2)
   goto append;

  hi = git__fromhex(input[i + 1]);
  lo = git__fromhex(input[i + 2]);

  if (hi < 0 || lo < 0)
   goto append;

  c = (char)(hi << 4 | lo);
  i += 2;

append:
  if (git_buf_putc(decoded_out, c) < 0)
   return -1;
 }

 return 0;
}
