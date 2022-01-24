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
struct rtl8366_smi {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct rtl8366_smi* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct rtl8366_smi *smi = FUNC0(pdev);

	if (smi)
		FUNC1(smi);
}