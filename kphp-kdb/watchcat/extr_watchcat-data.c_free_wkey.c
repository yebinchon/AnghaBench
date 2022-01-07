
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* l; } ;
typedef TYPE_1__ wkey ;


 int keys_cnt ;
 TYPE_1__* wkey_mem ;

void free_wkey (wkey *w) {
  keys_cnt--;

  w->l = wkey_mem;
  wkey_mem = w;
}
