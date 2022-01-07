
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ name; } ;
typedef TYPE_1__ qkey ;


 scalar_t__ dl_get_memory_used () ;
 TYPE_1__* dl_malloc0 (int) ;
 int keys_cnt ;
 int keys_memory ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* qks ;

qkey *qkey_malloc (void) {
  keys_cnt++;
  if (qks == ((void*)0)) {
    keys_memory -= dl_get_memory_used();
    qkey *res = dl_malloc0 (sizeof (qkey));
    keys_memory += dl_get_memory_used();

    return res;
  }
  qkey *res = qks;
  qks = (qkey *)qks->name;
  memset (res, 0, sizeof (qkey));

  return res;
}
