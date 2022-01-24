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
struct dbdma_cmd {scalar_t__ xfer_status; int /*<<< orphan*/  phy_addr; void* command; void* req_count; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(struct dbdma_cmd *cp, int cmd,
			    void *buf, int count)
{
	cp->req_count = FUNC0(count);
	cp->command = FUNC0(cmd);
	cp->phy_addr = FUNC1(FUNC2(buf));
	cp->xfer_status = 0;
}