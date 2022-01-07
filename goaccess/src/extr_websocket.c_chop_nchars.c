
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,size_t) ;

__attribute__((used)) static size_t
chop_nchars (char *str, size_t n, size_t len)
{
  if (n == 0 || str == 0)
    return 0;

  if (n > len)
    n = len;
  memmove (str, str + n, len - n);

  return (len - n);
}
