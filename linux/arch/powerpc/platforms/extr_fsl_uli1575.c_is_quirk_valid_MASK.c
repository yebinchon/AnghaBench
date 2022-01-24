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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc8544_ds ; 
 int /*<<< orphan*/  mpc8572_ds ; 
 int /*<<< orphan*/  mpc86xx_hpcn ; 
 int /*<<< orphan*/  p2020_ds ; 

__attribute__((used)) static inline bool FUNC1(void)
{
	return (FUNC0(mpc86xx_hpcn) ||
		FUNC0(mpc8544_ds) ||
		FUNC0(p2020_ds) ||
		FUNC0(mpc8572_ds));
}