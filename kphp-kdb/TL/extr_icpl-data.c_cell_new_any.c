
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ icpl_cell_t ;


 int ct_any ;
 TYPE_1__* zmalloc0 (int) ;

__attribute__((used)) static icpl_cell_t *cell_new_any (void) {
  icpl_cell_t *c = zmalloc0 (sizeof (*c));
  c->type = ct_any;
  return c;
}
