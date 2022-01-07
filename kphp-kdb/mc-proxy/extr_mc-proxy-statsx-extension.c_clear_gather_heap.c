
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GH_N ;
 int GH_mode ;
 scalar_t__ GH_total ;

__attribute__((used)) static void clear_gather_heap (int mode) {
  GH_N = 0;
  GH_total = 0;
  GH_mode = mode;
}
