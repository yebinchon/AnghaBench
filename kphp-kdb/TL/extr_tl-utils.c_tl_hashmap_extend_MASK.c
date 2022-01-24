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
struct tl_hashmap {int size; int n; int /*<<< orphan*/ ** h; int /*<<< orphan*/  compute_hash; int /*<<< orphan*/  compare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 struct tl_hashmap* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_hashmap**) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_hashmap**,int /*<<< orphan*/ *,int) ; 
 int verbosity ; 

__attribute__((used)) static void FUNC4 (struct tl_hashmap **V) {
  if (verbosity >= 4) {
    FUNC0 (stderr, "tl_hashmap_extend: old hash size is %d.\n", (*V)->size);
  }
  int i;
  struct tl_hashmap *H = FUNC1 ((*V)->n * 2);
  H->compare = (*V)->compare;
  H->compute_hash = (*V)->compute_hash;
  for (i = 0; i < (*V)->size; i++) {
    if ((*V)->h[i] != NULL) {
      FUNC3 (&H, (*V)->h[i], 1);
    }
  }
  FUNC2 (V);
  *V = H;
}