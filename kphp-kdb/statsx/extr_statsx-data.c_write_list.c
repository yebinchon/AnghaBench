
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writeout (int*,int) ;

int write_list (int *a, int l) {
  writeout (a, sizeof (int) * l);
  return l * sizeof (int);
}
