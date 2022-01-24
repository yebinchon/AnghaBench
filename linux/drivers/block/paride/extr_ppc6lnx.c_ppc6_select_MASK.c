#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int org_data; int org_ctrl; int cur_ctrl; int ppc_id; int mode; scalar_t__ lpt_addr; } ;
typedef  TYPE_1__ Interface ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int port_afd ; 
 int port_init ; 
 int port_int ; 
 int port_sel ; 

__attribute__((used)) static int FUNC2(Interface *ppc)
{
	u8 i, j, k;

	i = FUNC0(ppc->lpt_addr + 1);

	if (i & 1)
		FUNC1(i, ppc->lpt_addr + 1);

	ppc->org_data = FUNC0(ppc->lpt_addr);

	ppc->org_ctrl = FUNC0(ppc->lpt_addr + 2) & 0x5F; // readback ctrl

	ppc->cur_ctrl = ppc->org_ctrl;

	ppc->cur_ctrl |= port_sel;

	FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

	if (ppc->org_data == 'b')
		FUNC1('x', ppc->lpt_addr);

	FUNC1('b', ppc->lpt_addr);
	FUNC1('p', ppc->lpt_addr);
	FUNC1(ppc->ppc_id, ppc->lpt_addr);
	FUNC1(~ppc->ppc_id,ppc->lpt_addr);

	ppc->cur_ctrl &= ~port_sel;

	FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

	ppc->cur_ctrl = (ppc->cur_ctrl & port_int) | port_init;

	FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

	i = ppc->mode & 0x0C;

	if (i == 0)
		i = (ppc->mode & 2) | 1;

	FUNC1(i, ppc->lpt_addr);

	ppc->cur_ctrl |= port_sel;

	FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

	// DELAY

	ppc->cur_ctrl |= port_afd;

	FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

	j = ((i & 0x08) << 4) | ((i & 0x07) << 3);

	k = FUNC0(ppc->lpt_addr + 1) & 0xB8;

	if (j == k)
	{
		ppc->cur_ctrl &= ~port_afd;

		FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

		k = (FUNC0(ppc->lpt_addr + 1) & 0xB8) ^ 0xB8;

		if (j == k)
		{
			if (i & 4)	// EPP
				ppc->cur_ctrl &= ~(port_sel | port_init);
			else				// PPC/ECP
				ppc->cur_ctrl &= ~port_sel;

			FUNC1(ppc->cur_ctrl, ppc->lpt_addr + 2);

			return(1);
		}
	}

	FUNC1(ppc->org_ctrl, ppc->lpt_addr + 2);

	FUNC1(ppc->org_data, ppc->lpt_addr);

	return(0); // FAIL
}