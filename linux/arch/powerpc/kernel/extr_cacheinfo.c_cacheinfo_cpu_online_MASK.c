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
struct cache {int dummy; } ;

/* Variables and functions */
 struct cache* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct cache*) ; 

void FUNC2(unsigned int cpu_id)
{
	struct cache *cache;

	cache = FUNC0(cpu_id);
	if (!cache)
		return;

	FUNC1(cpu_id, cache);
}