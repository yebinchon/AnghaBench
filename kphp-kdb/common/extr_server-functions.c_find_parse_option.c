
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; scalar_t__ name; } ;


 TYPE_1__* global_longopts ;

int find_parse_option (int val) {
  int s = 0;
  while (global_longopts[s].name || global_longopts[s].val) {
    if (global_longopts[s].val == val) { return s; }
    s ++;
  }
  return -1;
}
