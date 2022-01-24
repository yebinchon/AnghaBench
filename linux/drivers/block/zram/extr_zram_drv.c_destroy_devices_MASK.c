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
 int /*<<< orphan*/  CPUHP_ZCOMP_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zram_control_class ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  zram_index_idr ; 
 int /*<<< orphan*/  zram_major ; 
 int /*<<< orphan*/  zram_remove_cb ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC0(&zram_control_class);
	FUNC3(&zram_index_idr, &zram_remove_cb, NULL);
	FUNC5();
	FUNC2(&zram_index_idr);
	FUNC4(zram_major, "zram");
	FUNC1(CPUHP_ZCOMP_PREPARE);
}