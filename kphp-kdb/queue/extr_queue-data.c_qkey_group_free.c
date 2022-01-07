
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; struct TYPE_4__* k; struct TYPE_4__* r; } ;
typedef TYPE_1__ qkey_group ;
typedef int qkey ;


 int dl_free (TYPE_1__*,int) ;
 scalar_t__ dl_get_memory_used () ;
 int keys_memory ;

void qkey_group_free (qkey_group *k) {
  keys_memory -= dl_get_memory_used();
  dl_free (k->r, sizeof (char) * k->n);
  dl_free (k->k, sizeof (qkey *) * k->n);
  dl_free (k, sizeof (qkey_group));
  keys_memory += dl_get_memory_used();
}
