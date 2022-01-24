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
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,unsigned long) ; 
 int /*<<< orphan*/  octeon_bootbus_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static map_word FUNC3(struct map_info *map, unsigned long ofs)
{
	map_word r;

	FUNC0(&octeon_bootbus_sem);
	r = FUNC1(map, ofs);
	FUNC2(&octeon_bootbus_sem);

	return r;
}