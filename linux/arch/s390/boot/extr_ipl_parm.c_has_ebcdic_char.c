
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int has_ebcdic_char(const char *str)
{
 int i;

 for (i = 0; str[i]; i++)
  if (str[i] & 0x80)
   return 1;
 return 0;
}
