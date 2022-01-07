
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;



__attribute__((used)) static ssize_t last_line(const char *buf, size_t len)
{
 ssize_t i;
 if (len == 0)
  return -1;
 if (len == 1)
  return 0;





 i = len - 2;

 for (; i >= 0; i--) {
  if (buf[i] == '\n')
   return i + 1;
 }
 return 0;
}
