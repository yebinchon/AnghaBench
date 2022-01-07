
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ xdchange_t ;


 int xdl_free (TYPE_1__*) ;

void xdl_free_script(xdchange_t *xscr) {
 xdchange_t *xch;

 while ((xch = xscr) != ((void*)0)) {
  xscr = xscr->next;
  xdl_free(xch);
 }
}
