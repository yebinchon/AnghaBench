
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long time; } ;


 TYPE_1__* fbd_data ;

__attribute__((used)) static inline int lookup_binlog_binsearch (long long binlog_time, int a, int b) {
  int c;
  --a;
  while (b - a > 1) {
    c = (a + b) >> 1;
    if (fbd_data[c].time < binlog_time) {
      a = c;
    } else {
      b = c;
    }
  }
  return b;
}
