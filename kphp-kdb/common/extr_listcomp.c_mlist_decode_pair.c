
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlist_decoder_stack_entry {int left_idx; int right_idx; int multiplicity; int middle_value; int left_value; int right_value; } ;
struct mlist_decoder {int k; int K; int p; struct mlist_decoder_stack_entry* stack; } ;


 int mlist_decode_node (struct mlist_decoder*,struct mlist_decoder_stack_entry*) ;

int mlist_decode_pair (struct mlist_decoder *dec, int *multiplicity) {
  if (dec->k >= dec->K) {
    *multiplicity = 0;
    return 0x7fffffff;
  }
  dec->k++;
  struct mlist_decoder_stack_entry *data = dec->stack + dec->p;
  for (;;) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    for (;;) {
      if (dec->k == middle) {
        *multiplicity = data->multiplicity;
        return data->middle_value;
      }
      if (dec->k < data->right_idx) { break; }
      dec->p--;
      data--;
      middle = (data->left_idx + data->right_idx) >> 1;
    }
    dec->p++;
    struct mlist_decoder_stack_entry *next = data + 1;
    if (dec->k < middle) {
      next->left_idx = data->left_idx;
      next->left_value = data->left_value;
      next->right_idx = middle;
      next->right_value = data->middle_value;
      mlist_decode_node (dec, next);
      data = next;
    } else {
      next->left_idx = middle;
      next->left_value = data->middle_value;
      next->right_idx = data->right_idx;
      next->right_value = data->right_value;
      mlist_decode_node (dec, next);
      data = next;
    }
  }
}
