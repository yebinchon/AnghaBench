
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_data {int fields_mask; int* data; int zero_mask; } ;


 int MAX_EXTRA_MASK ;
 struct value_data* alloc_value_data (int) ;
 int free_value_data (struct value_data*) ;

struct value_data *convert_value_data (struct value_data *V, int mode, int flags) {
  struct value_data *W = alloc_value_data (V->fields_mask & flags);
  int i, *V_extra = V->data, *W_extra = W->data;
  W->zero_mask = V->zero_mask & flags;
  for (i = 1; i < MAX_EXTRA_MASK; i <<= 1) {
    if (W->fields_mask & i) {
      if (i < 256) {
        *W_extra++ = *V_extra;
      } else {
        *(long long *) W_extra = *(long long *) V_extra;
        W_extra += 2;
      }
    }
    if (V->fields_mask & i) {
      V_extra += i < 256 ? 1 : 2;
    }
  }
  if (!mode) {
    free_value_data (V);
  }
  return W;
}
