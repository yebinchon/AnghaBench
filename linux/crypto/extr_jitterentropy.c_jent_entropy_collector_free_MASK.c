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
struct rand_data {struct rand_data* mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rand_data*) ; 

void FUNC1(struct rand_data *entropy_collector)
{
	FUNC0(entropy_collector->mem);
	entropy_collector->mem = NULL;
	FUNC0(entropy_collector);
}