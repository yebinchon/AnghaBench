
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int fields_mask; scalar_t__ zero_mask; } ;


 int extra_mask_intcount (int) ;
 struct value_data* zmalloc (int) ;

struct value_data *alloc_value_data (int fields_mask) {
  struct value_data *V = zmalloc (4 + 4 * extra_mask_intcount (fields_mask));
  V->fields_mask = fields_mask;
  V->zero_mask = 0;
  return V;
}
