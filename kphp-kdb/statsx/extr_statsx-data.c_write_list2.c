
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writeout (int*,int) ;

int write_list2 (int *a) {
  writeout (a - 2, sizeof (int) * (a[-1] + 1) * 2);
  return sizeof (int) * (a[-1] + 1) * 2;
}
