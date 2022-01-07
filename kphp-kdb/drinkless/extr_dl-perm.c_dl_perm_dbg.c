
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int v; } ;
typedef TYPE_1__ dl_perm ;


 int _go (int ,int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

void dl_perm_dbg (dl_perm *p) {
  fprintf (stderr, "%d : \n", p->n);
  _go (p->v, 0);
}
