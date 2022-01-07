
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sz; int b; } ;


 int assert (int) ;
 TYPE_1__ le_buff ;
 int writeout (int ,int) ;

__attribute__((used)) static void out_log_event_write (long long *events) {
  assert (le_buff.sz);
  assert (!(le_buff.sz & 3));
  writeout (le_buff.b, le_buff.sz);
  le_buff.sz = 0;
  (*events)++;
}
