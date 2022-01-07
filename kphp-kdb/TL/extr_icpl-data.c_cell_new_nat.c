
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ icpl_cell_t ;


 int ct_nat ;
 int parse_nat (char const*,int) ;
 TYPE_2__* zmalloc0 (int) ;

__attribute__((used)) static icpl_cell_t *cell_new_nat (const char *input, int l) {
  icpl_cell_t *c = zmalloc0 (sizeof (*c));
  c->type = ct_nat;
  c->u.i = parse_nat (input, l);
  return c;
}
