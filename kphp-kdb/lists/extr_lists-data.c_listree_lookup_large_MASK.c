#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void tree_ext_large_t ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_5__ {void** root; int N; } ;
typedef  TYPE_1__ listree_direct_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ TF_MINUS ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree_ext_large_t *FUNC7 (listree_direct_t *LD, object_id_t x, int *index) {
  int rpos;
  tree_ext_large_t *T = FUNC0 (FUNC6 (FUNC2 (*LD->root), x));
  if (FUNC2 (T) == NIL) {
    rpos = FUNC3 (LD, x);
    if (rpos == 0) {
      return 0;
    }
    rpos = LD->N - rpos;
    if (!FUNC5 (FUNC4 (LD, rpos), x)) {
      return 0;
    }
    *index = rpos;
    return (void *)-1;
  } else {
    if (FUNC1 (T) == TF_MINUS) {
      return 0;
    }
    return T;
  }
}