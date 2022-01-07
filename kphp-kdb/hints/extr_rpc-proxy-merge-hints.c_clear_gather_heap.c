
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GH_N ;
 scalar_t__ GH_total ;

__attribute__((used)) static inline void clear_gather_heap (void) {
  GH_N = 0;
  GH_total = 0;
}
