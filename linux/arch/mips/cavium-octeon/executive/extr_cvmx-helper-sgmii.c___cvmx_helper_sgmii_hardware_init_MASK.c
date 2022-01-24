#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ board_type; } ;

/* Variables and functions */
 scalar_t__ CVMX_BOARD_TYPE_SIM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 TYPE_1__* FUNC5 () ; 

__attribute__((used)) static int FUNC6(int interface, int num_ports)
{
	int index;

	FUNC0(interface, num_ports);

	for (index = 0; index < num_ports; index++) {
		int ipd_port = FUNC4(interface, index);
		FUNC1(interface, index);
		/* Linux kernel driver will call ....link_set with the
		 * proper link state. In the simulator there is no
		 * link state polling and hence it is set from
		 * here.
		 */
		if (FUNC5()->board_type == CVMX_BOARD_TYPE_SIM)
			FUNC3(ipd_port,
				       FUNC2(ipd_port));
	}

	return 0;
}