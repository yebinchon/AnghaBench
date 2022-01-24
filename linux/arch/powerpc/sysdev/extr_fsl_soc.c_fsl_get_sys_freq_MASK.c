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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int*) ; 

u32 FUNC3(void)
{
	static u32 sysfreq = -1;
	struct device_node *soc;

	if (sysfreq != -1)
		return sysfreq;

	soc = FUNC0(NULL, "soc");
	if (!soc)
		return -1;

	FUNC2(soc, "clock-frequency", &sysfreq);
	if (sysfreq == -1 || !sysfreq)
		FUNC2(soc, "bus-frequency", &sysfreq);

	FUNC1(soc);
	return sysfreq;
}