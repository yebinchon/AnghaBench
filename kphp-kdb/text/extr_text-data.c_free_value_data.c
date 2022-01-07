
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int fields_mask; } ;


 int extra_mask_intcount (int ) ;
 int zfree (struct value_data*,int) ;

void free_value_data (struct value_data *V) {
  zfree (V, 4 + 4 * extra_mask_intcount (V->fields_mask));
}
