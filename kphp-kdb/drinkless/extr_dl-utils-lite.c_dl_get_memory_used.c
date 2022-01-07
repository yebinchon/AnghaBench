
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dl_memory_used ;

long long dl_get_memory_used (void) {
  return (long long)dl_memory_used;
}
