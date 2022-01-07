
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (int ) ;

__attribute__((used)) static int puts(const char *s)
{
 while (*s)
  putchar(*s++);
 return 0;
}
