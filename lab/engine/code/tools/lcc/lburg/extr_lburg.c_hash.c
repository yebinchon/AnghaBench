
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned hash(char *str) {
 unsigned h = 0;

 while (*str)
  h = (h<<1) + *str++;
 return h;
}
