#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  c_badportals ; 
 int /*<<< orphan*/  c_tinyportals ; 

void FUNC3( tree_t *tree ){
	FUNC2( SYS_VRB, "--- MakeTreePortals ---\n" );
	FUNC0( tree );
	FUNC1( tree->headnode );
	FUNC2( SYS_VRB, "%9d tiny portals\n", c_tinyportals );
	FUNC2( SYS_VRB, "%9d bad portals\n", c_badportals );  /* ydnar */
}