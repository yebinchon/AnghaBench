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
struct ylist_decoder_stack_entry {int right_value; int left_idx; int right_idx; scalar_t__ right_subtree_offset; int middle_value; int left_value; } ;
struct ylist_decoder {int p; int k; int K; int /*<<< orphan*/  br; struct ylist_decoder_stack_entry* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 long long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ylist_decoder*,struct ylist_decoder_stack_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ylist_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct ylist_decoder*,struct ylist_decoder_stack_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct ylist_decoder*,struct ylist_decoder_stack_entry*,int) ; 

int FUNC7 (struct ylist_decoder *dec, long long item_id_lowerbound) {
  struct ylist_decoder_stack_entry *data = dec->stack;

  int p = dec->p;
  data += dec->p;
  while (FUNC2 (data->right_value) <= item_id_lowerbound) {
    data--;
    p--;
  }

  if (p < dec->p) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (data->right_subtree_offset < 0) {
      while (dec->k < middle) {
        FUNC4 (dec);
      }
    } else {
      FUNC1 (&dec->br, data->right_subtree_offset);
      dec->k = middle;
    }
    dec->p = p;
  }

  for ( ; ; dec->p++, data++) {
    int middle = (data->left_idx + data->right_idx) >> 1;
    if (FUNC2 (data->middle_value) == item_id_lowerbound) {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          FUNC4 (dec);
        }
      } else {
        FUNC1 (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      FUNC3 (dec, data);
      return data->middle_value;
    }
    const int l = data->right_idx - data->left_idx;
    FUNC0 (l >= 2);
    if (l == 2) {
      FUNC0 (FUNC2 (data->right_value) >= item_id_lowerbound);
      if (FUNC2 (data->middle_value) < item_id_lowerbound) {
        if (data->right_idx == dec->K + 1) {
          return -1;
        }
        FUNC6 (dec, data, data->right_idx);
        return data->right_value;
      }
      if (FUNC2 (data->left_value) < item_id_lowerbound) {
        dec->k = middle;
        FUNC3 (dec, data);
        return data->middle_value;
      }
      //assert (data->left_value >= doc_id_lowerbound);
      FUNC6 (dec, data, data->left_idx);
      return data->left_value;
    }
    struct ylist_decoder_stack_entry *next = data + 1;
    if (FUNC2 (data->middle_value) > item_id_lowerbound) {
      // left subtree
      if (data->left_idx == middle - 1) {
        dec->k = middle;
        FUNC3 (dec, data);
        return data->middle_value;
      }
      next->left_idx = data->left_idx;
      next->left_value = data->left_value;
      next->right_idx = middle;
      next->right_value = data->middle_value;
      FUNC5 (dec, next);
    } else {
      if (data->right_subtree_offset < 0) {
        while (dec->k < middle) {
          FUNC4 (dec);
        }
      } else {
        FUNC1 (&dec->br, data->right_subtree_offset);
        dec->k = middle;
      }
      next->left_idx = middle;
      next->left_value = data->middle_value;
      next->right_idx = data->right_idx;
      next->right_value = data->right_value;
      FUNC5 (dec, next);
    }
  }
  FUNC0 (0);
  return -1;
}