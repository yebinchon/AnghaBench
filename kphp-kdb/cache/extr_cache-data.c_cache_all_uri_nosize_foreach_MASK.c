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
typedef  enum cache_sorted_order { ____Placeholder_cache_sorted_order } cache_sorted_order ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_uri*),int) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct cache_uri*),int) ; 
 int cgsl_order_bottom ; 
 int cgsl_order_top ; 

void FUNC3 (void (*func)(struct cache_uri *), enum cache_sorted_order order) {
  if (order == cgsl_order_top) {
    FUNC1 (func, order);
    FUNC2 (func, order);
  } else {
    FUNC0 (order == cgsl_order_bottom);
    FUNC2 (func, order);
    FUNC1 (func, order);
  }
}