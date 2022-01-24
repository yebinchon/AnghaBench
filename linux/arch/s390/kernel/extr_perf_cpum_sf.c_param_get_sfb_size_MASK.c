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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUM_SF_MAX_SDB ; 
 int /*<<< orphan*/  CPUM_SF_MIN_SDB ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *buffer, const struct kernel_param *kp)
{
	if (!FUNC0())
		return -ENODEV;
	return FUNC1(buffer, "%lu,%lu", CPUM_SF_MIN_SDB, CPUM_SF_MAX_SDB);
}