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
struct mlist_decoder_stack_entry {int left_value; int right_idx; int right_value; scalar_t__ left_idx; } ;
struct mlist_decoder {int size; int N; int K; int left_subtree_size_threshold; scalar_t__ k; int /*<<< orphan*/  br; int /*<<< orphan*/  all_ones; struct mlist_decoder_stack_entry* stack; scalar_t__ p; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlist_decoder*,struct mlist_decoder_stack_entry*) ; 
 struct mlist_decoder* FUNC5 (int) ; 

struct mlist_decoder *FUNC6 (int N, int K, const unsigned char *start_ptr, int prefix_bit_offset, int left_subtree_size_threshold) {
  int stack_sz = (K >= 0 ? FUNC3 (K + 1) : FUNC3 (N + 1));
  int sz = sizeof (struct mlist_decoder) + sizeof (struct mlist_decoder_stack_entry) * (stack_sz + 1);
  struct mlist_decoder *dec = FUNC5 (sz);

  dec->size = sz;
  FUNC1 (&dec->br, start_ptr, prefix_bit_offset);

  if (K == -1) {
    K = FUNC0 (&dec->br);
  }

  dec->N = N;
  dec->K = K;
  dec->p = 0;
  dec->left_subtree_size_threshold = left_subtree_size_threshold;

  struct mlist_decoder_stack_entry *data = dec->stack;
  data->left_idx = 0;
  data->left_value = -1;
  data->right_idx = dec->K + 1;
  data->right_value = dec->N;
  dec->all_ones = FUNC2 (&dec->br, 1);
  FUNC4 (dec, data);
  dec->k = 0;

  return dec;
}