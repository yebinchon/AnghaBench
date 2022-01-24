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
typedef  int /*<<< orphan*/  u32 ;
struct mtip_port {int /*<<< orphan*/ * cmd_issue; int /*<<< orphan*/  flags; } ;
struct mtip_cmd {int dummy; } ;
struct driver_data {struct mtip_port* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_PF_IC_ACTIVE_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTIP_TAG_INTERNAL ; 
 struct mtip_cmd* FUNC2 (struct driver_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtip_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct driver_data *dd, u32 port_stat)
{
	struct mtip_port *port = dd->port;
	struct mtip_cmd *cmd = FUNC2(dd, MTIP_TAG_INTERNAL);

	if (FUNC5(MTIP_PF_IC_ACTIVE_BIT, &port->flags) && cmd) {
		int group = FUNC1(MTIP_TAG_INTERNAL);
		int status = FUNC4(port->cmd_issue[group]);

		if (!(status & (1 << FUNC0(MTIP_TAG_INTERNAL))))
			FUNC3(cmd, 0);
	}
}