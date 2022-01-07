
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_act_extra {int dummy; } ;


 int default_stat_function () ;
 int tl_stat_function () ;

int tl_act_stat (struct tl_act_extra *extra) {
  if (tl_stat_function) {
    tl_stat_function ();
  } else {
    default_stat_function ();
  }
  return 0;
}
