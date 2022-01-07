
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int treespace_t ;
struct TYPE_2__ {int free_queue_cnt; int* free_queue; } ;


 TYPE_1__* TS_HEADER ;

int get_treespace_free_detailed_stats (treespace_t TS, int *where) {
  int i, N = TS_HEADER->free_queue_cnt;
  int *from = TS_HEADER->free_queue + 1;
  for (i = 0; i < N; i++) {
    *where++ = *from++;
    ++from;
  }
  return N;
}
