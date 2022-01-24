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
struct amortization_counter {float value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TAT ; 
 size_t acounter_off ; 
 int amortization_counter_types ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct amortization_counter*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

float FUNC2 (struct cache_uri *U, int id) {
  FUNC1 (id >= 0 && id < amortization_counter_types);
  struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
  C += id;
  FUNC0 (&TAT[id], C);
  return C->value;
}