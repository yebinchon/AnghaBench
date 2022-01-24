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
struct bit_map {unsigned long* map; int size; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bit_map*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct bit_map *t, unsigned long *map, int size)
{
	FUNC0(map, size);
	FUNC1(t, 0, sizeof *t);
	FUNC2(&t->lock);
	t->map = map;
	t->size = size;
}