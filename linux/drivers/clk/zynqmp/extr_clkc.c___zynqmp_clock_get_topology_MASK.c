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
typedef  scalar_t__ u32 ;
struct topology_resp {int /*<<< orphan*/ * topology; } ;
struct clock_topology {void* type_flag; void* flag; scalar_t__ type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLK_TOPOLOGY_FLAGS ; 
 int /*<<< orphan*/  CLK_TOPOLOGY_TYPE ; 
 int /*<<< orphan*/  CLK_TOPOLOGY_TYPE_FLAGS ; 
 int END_OF_TOPOLOGY_NODE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_INVALID ; 

__attribute__((used)) static int FUNC2(struct clock_topology *topology,
				       struct topology_resp *response,
				       u32 *nnodes)
{
	int i;
	u32 type;

	for (i = 0; i < FUNC0(response->topology); i++) {
		type = FUNC1(CLK_TOPOLOGY_TYPE, response->topology[i]);
		if (type == TYPE_INVALID)
			return END_OF_TOPOLOGY_NODE;
		topology[*nnodes].type = type;
		topology[*nnodes].flag = FUNC1(CLK_TOPOLOGY_FLAGS,
						   response->topology[i]);
		topology[*nnodes].type_flag =
				FUNC1(CLK_TOPOLOGY_TYPE_FLAGS,
					  response->topology[i]);
		(*nnodes)++;
	}

	return 0;
}