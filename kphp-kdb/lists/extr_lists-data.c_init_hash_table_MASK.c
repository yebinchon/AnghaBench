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

/* Variables and functions */
 int LISTS_PRIME ; 
 int /*<<< orphan*/  List ; 
 int FUNC0 (int) ; 
 int lists_prime ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 double max_lists ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3 (int x) {
  x = (int)x * 1.5;
  lists_prime = FUNC0 ((x <= LISTS_PRIME ? LISTS_PRIME : x));
  List = FUNC1 (lists_prime * sizeof (void *));
  FUNC2 (List, 0, lists_prime * sizeof (void *));
  max_lists = 0.7 * lists_prime;
}