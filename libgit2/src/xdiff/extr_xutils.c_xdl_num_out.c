
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;



int xdl_num_out(char *out, long val) {
 char *ptr, *str = out;
 char buf[32];

 ptr = buf + sizeof(buf) - 1;
 *ptr = '\0';
 if (val < 0) {
  *--ptr = '-';
  val = -val;
 }
 for (; val && ptr > buf; val /= 10)
  *--ptr = "0123456789"[val % 10];
 if (*ptr)
  for (; *ptr; ptr++, str++)
   *str = *ptr;
 else
  *str++ = '0';
 *str = '\0';

 return str - out;
}
