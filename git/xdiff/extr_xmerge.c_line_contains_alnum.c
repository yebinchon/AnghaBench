
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;

__attribute__((used)) static int line_contains_alnum(const char *ptr, long size)
{
 while (size--)
  if (isalnum((unsigned char)*(ptr++)))
   return 1;
 return 0;
}
