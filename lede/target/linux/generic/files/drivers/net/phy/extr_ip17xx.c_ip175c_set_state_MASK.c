#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ip17xx_state {unsigned int add_tag; unsigned int remove_tag; TYPE_3__* ports; TYPE_2__* regs; TYPE_1__* vlans; } ;
struct TYPE_11__ {int m; } ;
typedef  TYPE_4__ reg ;
typedef  int /*<<< orphan*/  bitnum ;
struct TYPE_10__ {unsigned int shareports; int /*<<< orphan*/  pvid; } ;
struct TYPE_9__ {int NUM_PORTS; TYPE_4__* VLAN_DEFAULT_TAG_REG; scalar_t__ SIMPLE_VLAN_REGISTERS; int /*<<< orphan*/ * TAG_VLAN_MASK_ODD_BIT; int /*<<< orphan*/ * TAG_VLAN_MASK_EVEN_BIT; TYPE_4__ TAG_VLAN_MASK_REG; TYPE_4__ VLAN_LOOKUP_REG_5; TYPE_4__ VLAN_LOOKUP_REG; int /*<<< orphan*/ * VLAN_LOOKUP_ODD_BIT; int /*<<< orphan*/ * VLAN_LOOKUP_EVEN_BIT; int /*<<< orphan*/  const* REMOVE_TAG_BIT; TYPE_4__ REMOVE_TAG_REG; int /*<<< orphan*/  const* ADD_TAG_BIT; TYPE_4__ ADD_TAG_REG; } ;
struct TYPE_8__ {unsigned int ports; } ;

/* Variables and functions */
 int MAX_PORTS ; 
 int MAX_VLANS ; 
 scalar_t__ FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (struct ip17xx_state*,unsigned int,TYPE_4__,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct ip17xx_state*) ; 
 int FUNC3 (struct ip17xx_state*,TYPE_4__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ip17xx_state *state)
{
	int j;
	int i;
	FUNC1(state, state->add_tag,
				  state->regs->ADD_TAG_REG, state->regs->ADD_TAG_BIT);
	FUNC1(state, state->remove_tag,
				  state->regs->REMOVE_TAG_REG, state->regs->REMOVE_TAG_BIT);

	if (FUNC0(state->regs->VLAN_LOOKUP_REG)) {
		for (j=0; j<state->regs->NUM_PORTS; j++) {
			reg addr;
			const bitnum *bit_lookup = (j%2==0)?
				state->regs->VLAN_LOOKUP_EVEN_BIT:
				state->regs->VLAN_LOOKUP_ODD_BIT;

			addr = state->regs->VLAN_LOOKUP_REG;
			if (state->regs->SIMPLE_VLAN_REGISTERS) {
				addr.m += j;
			} else {
				switch (j) {
				case 0:
				case 1:
					break;
				case 2:
				case 3:
					addr.m+=1;
					break;
				case 4:
					addr.m+=2;
					break;
				case 5:
					addr = state->regs->VLAN_LOOKUP_REG_5;
					break;
				default:
					addr.m = -1; // shouldn't get here, but...
					break;
				}
			}
			//printf("shareports for %d is %02X\n",j,state->ports[j].shareports);
			if (FUNC0(addr)) {
				FUNC1(state, state->ports[j].shareports, addr, bit_lookup);
			}
		}
	}
	if (FUNC0(state->regs->TAG_VLAN_MASK_REG)) {
		for (j=0; j<MAX_VLANS; j++) {
			reg addr = state->regs->TAG_VLAN_MASK_REG;
			const bitnum *bit_lookup = (j%2==0)?
				state->regs->TAG_VLAN_MASK_EVEN_BIT:
				state->regs->TAG_VLAN_MASK_ODD_BIT;
			unsigned int vlan_mask;
			if (state->regs->SIMPLE_VLAN_REGISTERS) {
				addr.m += j;
			} else {
				addr.m += j/2;
			}
			vlan_mask = state->vlans[j].ports;
			FUNC1(state, vlan_mask, addr, bit_lookup);
		}
	}

	for (i=0; i<MAX_PORTS; i++) {
		if (FUNC0(state->regs->VLAN_DEFAULT_TAG_REG[i])) {
			int err = FUNC3(state, state->regs->VLAN_DEFAULT_TAG_REG[i],
					state->ports[i].pvid);
			if (err < 0) {
				return err;
			}
		}
	}

	return FUNC2(state);
}