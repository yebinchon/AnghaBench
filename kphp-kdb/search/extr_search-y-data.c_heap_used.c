
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dyn_cur ;
 scalar_t__ dyn_first ;
 scalar_t__ dyn_last ;
 scalar_t__ dyn_top ;

__attribute__((used)) static long heap_used (void) {
  return (long)(dyn_cur - dyn_first) + (long) (dyn_last - dyn_top);
}
