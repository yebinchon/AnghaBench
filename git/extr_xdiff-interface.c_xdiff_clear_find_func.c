
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ff_regs* find_func_priv; int * find_func; } ;
typedef TYPE_1__ xdemitconf_t ;
struct ff_regs {int nr; struct ff_regs* array; int re; } ;


 int free (struct ff_regs*) ;
 int regfree (int *) ;

void xdiff_clear_find_func(xdemitconf_t *xecfg)
{
 if (xecfg->find_func) {
  int i;
  struct ff_regs *regs = xecfg->find_func_priv;

  for (i = 0; i < regs->nr; i++)
   regfree(&regs->array[i].re);
  free(regs->array);
  free(regs);
  xecfg->find_func = ((void*)0);
  xecfg->find_func_priv = ((void*)0);
 }
}
