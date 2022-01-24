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
struct TYPE_4__ {int /*<<< orphan*/  pieces; scalar_t__ ended; } ;
typedef  TYPE_1__ uiDrawPath ;
struct piece {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct piece*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(uiDrawPath *p, struct piece *piece)
{
	if (p->ended)
		FUNC1("You cannot modify a uiDrawPath that has been ended. (path: %p)", p);
	FUNC0(p->pieces, piece, 1);
}