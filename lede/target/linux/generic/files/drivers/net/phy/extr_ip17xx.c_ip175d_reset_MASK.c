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
struct ip17xx_state {scalar_t__ vlan_enabled; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct ip17xx_state*) ; 
 int FUNC1 (struct ip17xx_state*,int,int,int) ; 
 int FUNC2 (struct ip17xx_state*,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct ip17xx_state *state)
{
	int err = 0;

	// Disable the special tagging mode
	err |= FUNC2(state, 21, 22, 0x0003, 0x0000);

	// Set 802.1q protocol type
	err |= FUNC1(state, 22, 3, 0x8100);

	state->vlan_enabled = 0;
	err |= FUNC0(state);

	return (err ? -EIO : 0);
}