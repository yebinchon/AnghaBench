
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE ;
 scalar_t__ SC_LARGE_MAXCLASS ;
 scalar_t__ SC_LARGE_MINCLASS ;
 int huge_arena_ind ;
 int narenas_total_get () ;
 scalar_t__ opt_oversize_threshold ;
 scalar_t__ oversize_threshold ;

bool
arena_init_huge(void) {
 bool huge_enabled;


 if (opt_oversize_threshold > SC_LARGE_MAXCLASS ||
     opt_oversize_threshold < SC_LARGE_MINCLASS) {
  opt_oversize_threshold = 0;
  oversize_threshold = SC_LARGE_MAXCLASS + PAGE;
  huge_enabled = 0;
 } else {

  huge_arena_ind = narenas_total_get();
  oversize_threshold = opt_oversize_threshold;
  huge_enabled = 1;
 }

 return huge_enabled;
}
