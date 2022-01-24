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
struct flow_offload {scalar_t__ timeout; } ;
struct fe_priv {int /*<<< orphan*/ * foe_flow_table; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 struct flow_offload* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct fe_priv *eth, unsigned int hash)
{
	struct flow_offload *flow;

	FUNC1();
	flow = FUNC0(eth->foe_flow_table[hash]);
	if (flow)
		flow->timeout = jiffies + 30 * HZ;
	FUNC2();
}