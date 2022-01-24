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
struct amortization_counter_precise {double value; } ;
struct amortization_counter {double value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TAT ; 
 size_t acounter_off ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct amortization_counter_precise*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct amortization_counter*) ; 
 struct amortization_counter_precise* cum_access_counters ; 
 int FUNC2 (int) ; 
 struct cache_uri* FUNC3 (char const* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const* const,char*) ; 

int FUNC5 (const char *const uri, int T, double *value) {
  const int id = FUNC2 (T);
  if (id < 0) {
    return -1;
  }
  struct cache_uri *U = FUNC3 (uri, 0);
  if (U == NULL) {
    if (FUNC4 (uri, "__CUMULATIVE__")) {
      return -2;
    }
    struct amortization_counter_precise *C = cum_access_counters;
    C += id;
    FUNC0 (&TAT[id], C, 0);
    *value = C->value;
    return 0;
  } else {
    struct amortization_counter *C = (struct amortization_counter *) &U->data[acounter_off];
    C += id;
    FUNC1 (&TAT[id], C);
    *value = C->value;
    return 0;
  }
}