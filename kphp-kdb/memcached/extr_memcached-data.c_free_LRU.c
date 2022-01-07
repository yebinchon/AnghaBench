
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next_used; } ;


 int del_by_LRU ;
 int del_entry (int) ;
 TYPE_1__* entry_buffer ;

int free_LRU (void) {
  int used_st = entry_buffer[0].next_used;
  if (used_st == 0) {
    return -1;
  }

  del_by_LRU++;
  del_entry (used_st);

  return 0;
}
