
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int dummy; } ;


 int TL_TRUE ;
 int tl_store_int (int ) ;

int tl_act_nop (struct tl_act_extra *extra) {
  tl_store_int (TL_TRUE);
  return 0;
}
