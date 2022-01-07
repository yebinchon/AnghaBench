
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int treespace_t ;
struct TYPE_2__ {int free_queue_cnt; scalar_t__* free_queue; } ;


 TYPE_1__* TS_HEADER ;

int get_treespace_free_stats (treespace_t TS) {
  int i;
  long long res = 0;
  for (i = 0; i < TS_HEADER->free_queue_cnt; i++) {
    res += TS_HEADER->free_queue[2 * i + 1];
  }
  return res;
}
