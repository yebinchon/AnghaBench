
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double entry_memory ;
 double memory_for_entries ;

int memory_full_warning (void) {
  return entry_memory >= 0.9 * memory_for_entries;
}
