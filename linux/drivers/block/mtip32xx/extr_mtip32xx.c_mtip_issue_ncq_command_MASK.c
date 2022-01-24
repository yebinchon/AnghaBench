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
struct mtip_port {int /*<<< orphan*/ * cmd_issue_lock; int /*<<< orphan*/ * cmd_issue; int /*<<< orphan*/ * s_active; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct mtip_port *port, int tag)
{
	int group = tag >> 5;

	/* guard SACT and CI registers */
	FUNC2(&port->cmd_issue_lock[group]);
	FUNC4((1 << FUNC0(tag)),
			port->s_active[FUNC1(tag)]);
	FUNC4((1 << FUNC0(tag)),
			port->cmd_issue[FUNC1(tag)]);
	FUNC3(&port->cmd_issue_lock[group]);
}