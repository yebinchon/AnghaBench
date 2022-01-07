
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* FreeCnt ;
 int MAX_RECORD_WORDS ;
 int freed_blocks ;
 int freed_bytes ;

void dyn_update_stats (void) {
  int i;
  freed_blocks = freed_bytes = 0;
  for (i = 1; i < MAX_RECORD_WORDS; i++) {
    freed_blocks += FreeCnt[i];
    freed_bytes += i*FreeCnt[i];
  }
  freed_bytes <<= 2;
}
