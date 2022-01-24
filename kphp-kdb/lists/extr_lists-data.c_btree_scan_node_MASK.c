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
typedef  int /*<<< orphan*/  tree_ext_small_t ;
struct tree_payload {int flags; int /*<<< orphan*/  global_id; int /*<<< orphan*/  value; } ;
struct heap_entry {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tree_payload* FUNC1 (int /*<<< orphan*/ *) ; 
 int __vsort_and_mask ; 
 int /*<<< orphan*/  __vsort_scanned ; 
 int __vsort_xor_mask ; 
 struct heap_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (tree_ext_small_t *T) {
  struct tree_payload *P = FUNC1 (T);
  if (((P->flags ^ __vsort_xor_mask) & __vsort_and_mask) != 0) {
    return 0;
  }
  struct heap_entry *h = FUNC2 (P->value, P->global_id);
  if (h) {
    h->node = FUNC0(T);
  }
  __vsort_scanned++;
  return 1;
}