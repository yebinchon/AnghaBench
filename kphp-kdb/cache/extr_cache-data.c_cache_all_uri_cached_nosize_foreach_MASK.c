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
 int /*<<< orphan*/  FUNC0 (void (*) (struct cache_uri*),int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_cached ; 

__attribute__((used)) static void FUNC1 (void (*func)(struct cache_uri *), enum cache_sorted_order order) {
  FUNC0 (func, order, list_cached);
}