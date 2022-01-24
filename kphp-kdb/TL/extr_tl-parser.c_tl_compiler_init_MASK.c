#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tl_compiler {scalar_t__ magic; int flag_output_magic; TYPE_3__* hm_composite_typename; TYPE_2__** hm_combinator; TYPE_1__** hm_magic; int /*<<< orphan*/ * expr; int /*<<< orphan*/  tmp_error_buff; } ;
struct TYPE_6__ {int /*<<< orphan*/  compute_hash; int /*<<< orphan*/  compare; } ;
struct TYPE_5__ {int /*<<< orphan*/  compute_hash; int /*<<< orphan*/  compare; } ;
struct TYPE_4__ {int /*<<< orphan*/  compute_hash; int /*<<< orphan*/  compare; } ;

/* Variables and functions */
 scalar_t__ TL_COMPILER_INITIALIZED_MAGIC ; 
 int /*<<< orphan*/  TL_MIN_HASHMAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tl_compiler*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tl_expression_combinator_hash_compare ; 
 int /*<<< orphan*/  tl_expression_combinator_hash_compute_hash ; 
 int /*<<< orphan*/  tl_expression_int_hash_compare ; 
 int /*<<< orphan*/  tl_expression_int_hash_compute_hash ; 
 int /*<<< orphan*/  tl_expression_right_name_hash_compare ; 
 int /*<<< orphan*/  tl_expression_right_name_hash_compute_hash ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (struct tl_compiler *C) {
  int i;
  if (C->magic == TL_COMPILER_INITIALIZED_MAGIC) {
    return;
  }
  FUNC0 (C, 0, sizeof (*C));
  C->magic = TL_COMPILER_INITIALIZED_MAGIC;
  FUNC3 (&C->tmp_error_buff);
  for (i = 0; i < 2; i++) {
    FUNC2 (&C->expr[i]);
    C->hm_magic[i] = FUNC1 (TL_MIN_HASHMAP_SIZE);
    C->hm_magic[i]->compare = tl_expression_int_hash_compare;
    C->hm_magic[i]->compute_hash = tl_expression_int_hash_compute_hash;
    C->hm_combinator[i] = FUNC1 (TL_MIN_HASHMAP_SIZE);
    C->hm_combinator[i]->compare = tl_expression_combinator_hash_compare;
    C->hm_combinator[i]->compute_hash = tl_expression_combinator_hash_compute_hash;
  }
  C->hm_composite_typename = FUNC1 (TL_MIN_HASHMAP_SIZE);
  C->hm_composite_typename->compare = tl_expression_right_name_hash_compare;
  C->hm_composite_typename->compute_hash = tl_expression_right_name_hash_compute_hash;
  C->flag_output_magic = 1;
}