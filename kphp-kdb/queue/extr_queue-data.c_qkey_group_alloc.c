
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int r; void* k; } ;
typedef TYPE_1__ qkey_group ;
typedef int qkey ;


 scalar_t__ dl_get_memory_used () ;
 void* dl_malloc (int) ;
 int dl_malloc0 (int) ;
 int keys_memory ;

qkey_group *qkey_group_alloc (int n) {
  keys_memory -= dl_get_memory_used();

  qkey_group *r = dl_malloc (sizeof (qkey_group));
  r->n = n;
  r->k = dl_malloc (sizeof (qkey *) * n);
  r->r = dl_malloc0 (sizeof (char) * n);

  keys_memory += dl_get_memory_used();

  return r;
}
