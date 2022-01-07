
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *end_of_line(char *cp, unsigned long *left)
{
 unsigned long l = *left;
 while (l && *cp != '\n') {
  l--;
  cp++;
 }
 *left = l;
 return cp;
}
