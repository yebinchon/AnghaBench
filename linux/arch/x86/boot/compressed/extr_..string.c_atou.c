
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;

unsigned int atou(const char *s)
{
 unsigned int i = 0;
 while (isdigit(*s))
  i = i * 10 + (*s++ - '0');
 return i;
}
