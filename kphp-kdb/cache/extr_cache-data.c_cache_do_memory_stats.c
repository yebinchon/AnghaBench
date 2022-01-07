
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; } ;
typedef TYPE_1__ cache_buffer_t ;


 scalar_t__* FreeCnt ;
 int MAX_RECORD_WORDS ;
 int PTR_INTS ;
 int cache_bclear (TYPE_1__*,char*,int) ;
 int cache_bprintf (TYPE_1__*,char*,int,int) ;

int cache_do_memory_stats (char *output, int olen) {
  cache_buffer_t b;
  cache_bclear (&b, output, olen);
  int i;
  for (i = PTR_INTS; i <= MAX_RECORD_WORDS + 3; i++) {
    if (FreeCnt[i]) {
      cache_bprintf (&b, "FreeCnt[%d] = %d\n", i, (int) FreeCnt[i]);
    }
  }
  return b.pos;
}
