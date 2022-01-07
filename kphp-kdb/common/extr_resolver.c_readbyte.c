
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static int readbyte (char **ptr) {
  char *tmp;
  unsigned val = strtoul (*ptr, &tmp, 10);
  if (tmp == *ptr || val > 255) {
    return -1;
  }
  *ptr = tmp;
  return val;
}
