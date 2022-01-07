
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *find_beginning_of_line(char *bob, char *scan)
{
 while (bob < scan && *(--scan) != '\n')
  ;




 return scan;
}
