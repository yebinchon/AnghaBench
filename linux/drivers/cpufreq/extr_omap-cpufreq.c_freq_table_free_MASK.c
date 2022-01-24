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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  freq_table ; 
 int /*<<< orphan*/  freq_table_users ; 
 int /*<<< orphan*/  mpu_dev ; 

__attribute__((used)) static inline void FUNC2(void)
{
	if (FUNC0(&freq_table_users))
		FUNC1(mpu_dev, &freq_table);
}