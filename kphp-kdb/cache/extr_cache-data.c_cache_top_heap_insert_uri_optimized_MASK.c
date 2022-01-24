#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_uri {int /*<<< orphan*/ * data; } ;
struct amortization_counter {scalar_t__ value; } ;
struct TYPE_2__ {int size; int max_size; struct cache_uri** H; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct amortization_counter*) ; 
 size_t heap_acounter_off ; 
 TYPE_1__* heap_foreach ; 
 int /*<<< orphan*/  tbl_foreach ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3 (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  int i, j;
  if (FUNC2(heap_foreach->size < heap_foreach->max_size)) {
    FUNC1 (tbl_foreach, C);
    i = ++(heap_foreach->size);
    while (i > 1) {
      j = i >> 1;
      if (FUNC0(j) <= C->value) {
        break;
      }
      heap_foreach->H[i] = heap_foreach->H[j];
      i = j;
    }
    heap_foreach->H[i] = U;
  } else {
    if (FUNC2(FUNC0(1) < C->value)) {
      FUNC1 (tbl_foreach, C);
      if (FUNC0(1) < C->value) {
        i = 1;
        while (1) {
          j = i << 1;
          if (j > heap_foreach->size) {
            break;
          }
          if (j < heap_foreach->size && FUNC0(j) > FUNC0(j+1)) {
            j++;
          }
          if (C->value <= FUNC0(j)) {
            break;
          }
          heap_foreach->H[i] = heap_foreach->H[j];
          i = j;
        }
        heap_foreach->H[i] = U;
      }
    }
  }
}