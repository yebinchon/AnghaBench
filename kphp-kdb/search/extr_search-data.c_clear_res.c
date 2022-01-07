
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ h; } ;
struct TYPE_3__ {scalar_t__ filled; scalar_t__ h; } ;


 scalar_t__ R_cnt ;
 scalar_t__ R_tot ;
 scalar_t__ R_tot_groups ;
 scalar_t__ R_tot_undef_hash ;
 TYPE_2__ hm ;
 TYPE_1__ hs ;
 int init_order () ;

void clear_res (void) {
  R_cnt = R_tot = R_tot_undef_hash = R_tot_groups = 0;
  init_order ();
  hs.h = 0;
  hm.h = 0;
  hs.filled = 0;
}
