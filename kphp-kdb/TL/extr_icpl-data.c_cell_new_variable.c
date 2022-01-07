
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char variable_name; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ icpl_cell_t ;


 int ct_variable ;
 TYPE_2__* zmalloc0 (int) ;

__attribute__((used)) static icpl_cell_t *cell_new_variable (char variable_name) {
  icpl_cell_t *c = zmalloc0 (sizeof (*c));
  c->type = ct_variable;
  c->u.variable_name = variable_name;
  return c;
}
