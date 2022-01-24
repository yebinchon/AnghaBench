#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ freedtreemem ; 

void FUNC6(tree_t *tree)
{
	//if no tree just return
	if (!tree) return;
	//
	freedtreemem = 0;
	//
	FUNC4(tree->headnode);
	FUNC5(tree->headnode);
#ifdef ME
	freedtreemem += MemorySize(tree);
#endif //ME
	FUNC0(tree);
#ifdef ME
	Log_Print("freed ");
	PrintMemorySize(freedtreemem);
	Log_Print(" of tree memory\n");
#endif //ME
}