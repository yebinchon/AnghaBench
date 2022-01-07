
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rv; int * v; scalar_t__ len; scalar_t__ n; } ;
typedef TYPE_1__ dl_perm ;



void dl_perm_init (dl_perm *p) {
  p->n = 0;
  p->len = 0;
  p->v = ((void*)0);
  p->rv = ((void*)0);
}
