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
struct tree_payload {int /*<<< orphan*/  date; } ;

/* Variables and functions */
 struct tree_payload* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2 (tree_ext_small_t *T) {
  struct tree_payload *P = FUNC0 (T);
  return FUNC1 (P->date);
}