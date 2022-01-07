
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int vec; } ;
typedef TYPE_1__ prof_bt_t ;


 int cassert (int ) ;
 int config_prof ;
 int hash (int ,int,int,size_t*) ;

void
prof_bt_hash(const void *key, size_t r_hash[2]) {
 prof_bt_t *bt = (prof_bt_t *)key;

 cassert(config_prof);

 hash(bt->vec, bt->len * sizeof(void *), 0x94122f33U, r_hash);
}
