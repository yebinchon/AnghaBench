
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; scalar_t__ len; scalar_t__ n; } ;
typedef TYPE_1__ dl_perm_list ;


 int list_alloc (int ,int ) ;

void dl_perm_list_init (dl_perm_list *p) {
  p->n = 0;
  p->len = 0;
  p->v = list_alloc (0, 0);
}
