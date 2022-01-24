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
typedef  int /*<<< orphan*/  tree_ext_large_t ;
struct tree_payload {scalar_t__ text; } ;

/* Variables and functions */
 scalar_t__ MDataEnd ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct tree_payload* FUNC1 (int /*<<< orphan*/ *) ; 
 int TF_PLUS ; 
 int TF_ZERO ; 
 int /*<<< orphan*/  alloc_large_nodes ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ empty_string ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tree_ext_large_node_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5 (tree_ext_large_t *T) {
  int tp = FUNC0 (T);
  struct tree_payload *P = FUNC1 (T);
  if (tp == TF_ZERO || tp == TF_PLUS) {
    if (P->text && P->text != empty_string) {
      FUNC2 (P->text >= MDataEnd);
      FUNC4 (P->text, FUNC3 (P->text));
    }
    P->text = 0;
  } else {
    FUNC2 (!P->text);
  }
  alloc_large_nodes--;
  FUNC4 (T, tree_ext_large_node_size);
}