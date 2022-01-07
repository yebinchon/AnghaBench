
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int set ;


 int rand () ;

void
genstr (char *dest, size_t len)
{
  char set[] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  while (len-- > 0)
    *dest++ = set[rand () % (sizeof (set) - 1)];
  *dest = '\0';
}
