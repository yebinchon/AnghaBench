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
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ c_inside ; 
 scalar_t__ c_outside ; 
 scalar_t__ c_solid ; 

void FUNC3( node_t *headnode ){
	c_outside = 0;
	c_inside = 0;
	c_solid = 0;
	FUNC1( SYS_VRB,"--- FillOutside ---\n" );
	FUNC0( headnode );
	FUNC1( SYS_VRB,"%9d solid leafs\n", c_solid );
	FUNC2( "%9d leafs filled\n", c_outside );
	FUNC1( SYS_VRB, "%9d inside leafs\n", c_inside );
}