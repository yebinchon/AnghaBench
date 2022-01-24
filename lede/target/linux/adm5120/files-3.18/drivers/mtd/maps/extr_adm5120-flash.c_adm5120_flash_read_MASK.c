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
struct map_info {int dummy; } ;
struct adm5120_map_info {unsigned long window_size; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*,unsigned long) ; 
 struct adm5120_map_info* FUNC5 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct map_info*) ; 

__attribute__((used)) static map_word FUNC7(struct map_info *map, unsigned long ofs)
{
	struct adm5120_map_info *amap = FUNC5(map);
	map_word ret;

	FUNC2(map, "reading from ofs %lX\n", ofs);

	if (ofs >= amap->window_size)
		return FUNC6(map);

	FUNC0();
	FUNC3(map, ofs);
	ret = FUNC4(map, (ofs & (amap->window_size-1)));
	FUNC1();

	return ret;
}