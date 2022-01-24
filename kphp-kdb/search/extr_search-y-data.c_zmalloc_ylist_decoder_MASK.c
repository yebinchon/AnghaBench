#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ylist_decoder_stack_entry {int left_value; int right_idx; int right_value; scalar_t__ left_idx; scalar_t__ num; } ;
struct ylist_decoder {int size; int capacity; int N; int K; int left_subtree_size_threshold; scalar_t__ k; struct ylist_decoder_stack_entry* stack; scalar_t__ p; void* positions; TYPE_1__* H; int /*<<< orphan*/  br; } ;
struct TYPE_3__ {void* positions1; } ;
typedef  TYPE_1__ iheap_en_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC2 (int) ; 
 int decoder_positions_max_capacity ; 
 int /*<<< orphan*/  FUNC3 (struct ylist_decoder*,struct ylist_decoder_stack_entry*) ; 
 void* FUNC4 (int) ; 

struct ylist_decoder *FUNC5 (iheap_en_t *H, int N, int K, const unsigned char *start_ptr, int prefix_bit_offset, int left_subtree_size_threshold) {
  FUNC0 (K >= 0);
  const int stack_sz = FUNC2 (K + 1);
  int sz = sizeof (struct ylist_decoder) + sizeof (struct ylist_decoder_stack_entry) * (stack_sz + 1);
  struct ylist_decoder *dec = FUNC4 (sz);

  dec->H = H;
  dec->size = sz;
  FUNC1 (&dec->br, start_ptr, prefix_bit_offset);

  dec->capacity = decoder_positions_max_capacity;
  dec->H->positions1 = dec->positions = FUNC4 (4 * dec->capacity);

  dec->N = N;
  dec->K = K;
  dec->p = 0;
  dec->left_subtree_size_threshold = left_subtree_size_threshold;

  struct ylist_decoder_stack_entry *data = dec->stack;
  int i;
  for (i = 0; i <= stack_sz; i++) {
    data[i].num = 0;
  }
  data->left_idx = 0;
  data->left_value = -1;
  data->right_idx = dec->K + 1;
  data->right_value = dec->N;
  FUNC3 (dec, data);
  dec->k = 0;

  return dec;
}