
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callback_init_done ;
 long callback_puts (int ,char const*,long) ;

long
srm_puts(const char *str, long len)
{
 long remaining, written;

 if (!callback_init_done)
  return len;

 for (remaining = len; remaining > 0; remaining -= written)
 {
  written = callback_puts(0, str, remaining);
  written &= 0xffffffff;
  str += written;
 }
 return len;
}
