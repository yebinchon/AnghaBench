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
 int /*<<< orphan*/  FUNC4 (struct map_info*,int /*<<< orphan*/  const,unsigned long) ; 
 struct adm5120_map_info* FUNC5 (struct map_info*) ; 

__attribute__((used)) static void FUNC6(struct map_info *map, const map_word datum,
		unsigned long ofs)
{
	struct adm5120_map_info *amap = FUNC5(map);

	FUNC2(map, "writing to ofs %lX\n", ofs);

	if (ofs > amap->window_size)
		return;

	FUNC0();
	FUNC3(map, ofs);
	FUNC4(map, datum, (ofs & (amap->window_size-1)));
	FUNC1();
}