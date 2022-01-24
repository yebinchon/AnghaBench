#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlist_decoder_stack_entry {int right_value; int left_idx; int right_idx; scalar_t__ right_subtree_offset; int middle_value; int multiplicity; int left_value; } ;
struct mlist_decoder {int p; int k; int K; int /*<<< orphan*/  br; struct mlist_decoder_stack_entry* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlist_decoder*,struct mlist_decoder_stack_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlist_decoder*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlist_decoder*,struct mlist_decoder_stack_entry*,int,int*) ; 

int FUNC5 (struct mlist_decoder *dec, long long item_id_lowerbound, long long (*docid_to_itemid) (int), int *multiplicity) {
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
        FUNC3 (dec, multiplicity);
      }
    } else {
      FUNC1 (&dec->br, data->right_subtree_offset);
      dec->k = middle;
    }
    dec->p = p;
  }

  for ( ; ; dec->p++, data++) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (docid_to_itemid (data->middle_value) == item_id_lowerbound) {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          FUNC3 (dec, multiplicity);
        }
      } else {
        FUNC1 (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      *multiplicity = data->multiplicity;
      return data->middle_value;
    }
    const int l = data->right_idx - data->left_idx;
    FUNC0 (l >= 2);
    if (l == 2) {
      FUNC0 (docid_to_itemid (data->right_value) >= item_id_lowerbound);
      if (docid_to_itemid (data->middle_value) < item_id_lowerbound) {
        if (data->right_idx == dec->K + 1) {
          return -1;
        }
        FUNC4 (dec, data, data->right_idx, multiplicity);
        return data->right_value;
      }
      if (docid_to_itemid (data->left_value) < item_id_lowerbound) {
        dec->k = middle;
        *multiplicity = data->multiplicity;
        return data->middle_value;
      }
      //assert (data->left_value >= doc_id_lowerbound);
      FUNC4 (dec, data, data->left_idx, multiplicity);
      return data->left_value;
    }
    struct mlist_decoder_stack_entry *next = data + 1;
    if (docid_to_itemid (data->middle_value) > item_id_lowerbound) {
      // left subtree
      if (data->left_idx == middle - 1) {
        dec->k = middle;
        *multiplicity = data->multiplicity;
        return data->middle_value;
      }
      next->left_idx = data->left_idx;
      next->left_value = data->left_value;
      next->right_idx = middle;
      next->right_value = data->middle_value;
      FUNC2 (dec, next);
    } else {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          FUNC3 (dec, multiplicity);
        }
      } else {
        FUNC1 (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      next->left_idx = middle;
      next->left_value = data->middle_value;
      next->right_idx = data->right_idx;
      next->right_value = data->right_value;
      FUNC2 (dec, next);
    }
  }
  FUNC0 (0);
  return -1;
}