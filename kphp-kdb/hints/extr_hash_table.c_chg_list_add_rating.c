
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rating ;
typedef int change_list_ptr ;
struct TYPE_2__ {int val; } ;


 TYPE_1__* chg_list_add (int *,int *,int,int) ;
 int write_only ;

void chg_list_add_rating (change_list_ptr *st, change_list_ptr *en, int type, int x, rating val) {
  if (!write_only) {
    chg_list_add (st, en, type, x)->val = val;
  }
}
