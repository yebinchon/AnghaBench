
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlist_decoder_stack_entry {int right_value; int left_idx; int right_idx; scalar_t__ right_subtree_offset; int middle_value; int multiplicity; int left_value; } ;
struct mlist_decoder {int p; int k; int K; int br; struct mlist_decoder_stack_entry* stack; } ;


 int assert (int) ;
 int bread_seek (int *,scalar_t__) ;
 int mlist_decode_node (struct mlist_decoder*,struct mlist_decoder_stack_entry*) ;
 int mlist_decode_pair (struct mlist_decoder*,int*) ;
 int mlist_uptree (struct mlist_decoder*,struct mlist_decoder_stack_entry*,int,int*) ;

int mlist_forward_decode_item (struct mlist_decoder *dec, long long item_id_lowerbound, long long (*docid_to_itemid) (int), int *multiplicity) {
  struct mlist_decoder_stack_entry *data = dec->stack;

  int p = dec->p;
  data += dec->p;
  while (docid_to_itemid (data->right_value) <= item_id_lowerbound) {
    data--;
    p--;
  }

  if (p < dec->p) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (data->right_subtree_offset < 0) {
      while (dec->k < middle) {
        mlist_decode_pair (dec, multiplicity);
      }
    } else {
      bread_seek (&dec->br, data->right_subtree_offset);
      dec->k = middle;
    }
    dec->p = p;
  }

  for ( ; ; dec->p++, data++) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (docid_to_itemid (data->middle_value) == item_id_lowerbound) {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          mlist_decode_pair (dec, multiplicity);
        }
      } else {
        bread_seek (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      *multiplicity = data->multiplicity;
      return data->middle_value;
    }
    const int l = data->right_idx - data->left_idx;
    assert (l >= 2);
    if (l == 2) {
      assert (docid_to_itemid (data->right_value) >= item_id_lowerbound);
      if (docid_to_itemid (data->middle_value) < item_id_lowerbound) {
        if (data->right_idx == dec->K + 1) {
          return -1;
        }
        mlist_uptree (dec, data, data->right_idx, multiplicity);
        return data->right_value;
      }
      if (docid_to_itemid (data->left_value) < item_id_lowerbound) {
        dec->k = middle;
        *multiplicity = data->multiplicity;
        return data->middle_value;
      }

      mlist_uptree (dec, data, data->left_idx, multiplicity);
      return data->left_value;
    }
    struct mlist_decoder_stack_entry *next = data + 1;
    if (docid_to_itemid (data->middle_value) > item_id_lowerbound) {

      if (data->left_idx == middle - 1) {
        dec->k = middle;
        *multiplicity = data->multiplicity;
        return data->middle_value;
      }
      next->left_idx = data->left_idx;
      next->left_value = data->left_value;
      next->right_idx = middle;
      next->right_value = data->middle_value;
      mlist_decode_node (dec, next);
    } else {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          mlist_decode_pair (dec, multiplicity);
        }
      } else {
        bread_seek (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      next->left_idx = middle;
      next->left_value = data->middle_value;
      next->right_idx = data->right_idx;
      next->right_value = data->right_value;
      mlist_decode_node (dec, next);
    }
  }
  assert (0);
  return -1;
}
