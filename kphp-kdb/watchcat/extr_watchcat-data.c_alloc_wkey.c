
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* l; } ;
typedef TYPE_1__ wkey ;


 TYPE_1__* dl_malloc (int) ;
 int keys_cnt ;
 int keys_memory ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* wkey_mem ;

wkey *alloc_wkey (void) {
  keys_cnt++;

  wkey *res;
  if (wkey_mem != ((void*)0)) {
    res = wkey_mem;
    wkey_mem = wkey_mem->l;
  } else {
    keys_memory += sizeof (wkey);
    res = dl_malloc (sizeof (wkey));
  }
  memset (res, 0, sizeof (wkey));
  return res;
}
