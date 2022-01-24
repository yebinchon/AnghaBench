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
struct TYPE_3__ {int /*<<< orphan*/  parts; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ uiTableColumn ;
struct tablePart {int /*<<< orphan*/ * r; } ;
typedef  int /*<<< orphan*/  GtkCellRenderer ;

/* Variables and functions */
 int /*<<< orphan*/  dataFunc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tablePart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tablePart*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uiTableColumn *c, struct tablePart *part, GtkCellRenderer *r, int expand)
{
	part->r = r;
	FUNC1(c->c, part->r, expand != 0);
	FUNC2(c->c, part->r, dataFunc, part, NULL);
	FUNC0(c->parts, part);
}