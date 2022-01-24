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
struct cache_uri {int /*<<< orphan*/ * data; } ;
struct amortization_counter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct amortization_counter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cache_uri*) ; 
 size_t heap_acounter_off ; 
 int /*<<< orphan*/  heap_foreach ; 
 int /*<<< orphan*/  tbl_foreach ; 

__attribute__((used)) static void FUNC2 (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  FUNC0 (tbl_foreach, C);
  FUNC1 (heap_foreach, U);
}