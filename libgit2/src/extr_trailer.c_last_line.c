
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool last_line(size_t *out, const char *buf, size_t len)
{
 size_t i;

 *out = 0;

 if (len == 0)
  return 0;
 if (len == 1)
  return 1;






 i = len - 2;

 for (; i > 0; i--) {
  if (buf[i] == '\n') {
   *out = i + 1;
   return 1;
  }
 }
 return 1;
}
