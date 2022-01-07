
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tot_lists; } ;


 TYPE_1__ Header ;
 int update_use (scalar_t__) ;

void update_revlist_use (int x) {
  update_use (x + Header.tot_lists + 1);
}
