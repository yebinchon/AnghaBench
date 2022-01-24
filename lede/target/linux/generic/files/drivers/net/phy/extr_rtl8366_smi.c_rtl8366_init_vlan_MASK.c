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
struct rtl8366_smi {int num_ports; int cpu_port; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8366_smi*,int) ; 
 int FUNC1 (struct rtl8366_smi*) ; 
 int FUNC2 (struct rtl8366_smi*,int,int) ; 
 int FUNC3 (struct rtl8366_smi*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi)
{
	int port;
	int err;

	err = FUNC1(smi);
	if (err)
		return err;

	for (port = 0; port < smi->num_ports; port++) {
		u32 mask;

		if (port == smi->cpu_port)
			mask = (1 << smi->num_ports) - 1;
		else
			mask = (1 << port) | (1 << smi->cpu_port);

		err = FUNC3(smi, (port + 1), mask, mask, 0);
		if (err)
			return err;

		err = FUNC2(smi, port, (port + 1));
		if (err)
			return err;
	}

	return FUNC0(smi, 1);
}