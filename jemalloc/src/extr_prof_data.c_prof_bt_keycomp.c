
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int vec; } ;
typedef TYPE_1__ prof_bt_t ;


 int cassert (int ) ;
 int config_prof ;
 scalar_t__ memcmp (int ,int ,int) ;

bool
prof_bt_keycomp(const void *k1, const void *k2) {
 const prof_bt_t *bt1 = (prof_bt_t *)k1;
 const prof_bt_t *bt2 = (prof_bt_t *)k2;

 cassert(config_prof);

 if (bt1->len != bt2->len) {
  return 0;
 }
 return (memcmp(bt1->vec, bt2->vec, bt1->len * sizeof(void *)) == 0);
}
