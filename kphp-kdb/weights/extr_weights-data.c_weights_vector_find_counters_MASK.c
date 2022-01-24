#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {int counters_mask; TYPE_2__ head; } ;
typedef  TYPE_1__ weights_vector_t ;
typedef  TYPE_2__ weights_counters_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static weights_counters_t *FUNC2 (weights_vector_t *V, int coord_id) {
  const int k = coord_id >> 5;
  if (!(((int) V->counters_mask) & (1 << k))) {
    return NULL;
  }
  int mask = V->counters_mask;
  weights_counters_t *C = &V->head;
  while (1) {
    FUNC0 (mask);
    int i = FUNC1 (mask) - 1; /* least significant) bit set */
    if (i == k) {
      return C;
    }
    mask ^= 1 << i;
    C = C->next;
  }
  return NULL;
}