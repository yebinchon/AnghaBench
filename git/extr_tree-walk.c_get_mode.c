
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_mode(const char *str, unsigned int *modep)
{
 unsigned char c;
 unsigned int mode = 0;

 if (*str == ' ')
  return ((void*)0);

 while ((c = *str++) != ' ') {
  if (c < '0' || c > '7')
   return ((void*)0);
  mode = (mode << 3) + (c - '0');
 }
 *modep = mode;
 return str;
}
