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
struct sthyi_sctns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sthyi_sctns*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sthyi_sctns*,void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sthyi_sctns *sctns)
{
	void *sysinfo;

	/* Errors are handled through the validity bits in the response. */
	sysinfo = (void *)FUNC0(GFP_KERNEL);
	if (!sysinfo)
		return;

	FUNC1(sctns, sysinfo);
	FUNC2(sctns, sysinfo);

	FUNC3((unsigned long)sysinfo, 0);
}