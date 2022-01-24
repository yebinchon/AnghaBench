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
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawBrush ;
struct TYPE_4__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_1__ uiAreaDrawParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(uiAreaDrawParams *p)
{
	uiDrawPath *path;
	uiDrawBrush brush;

	FUNC1(&brush, 1, 0, 0, 1);
	path = FUNC4(uiDrawFillModeWinding);
	FUNC0(path, p, 0, 0, 200, 100);
	FUNC5(path);
	FUNC2(p->Context, path, &brush);
	FUNC3(path);

	FUNC1(&brush, 0, 0, 1, .5);
	path = FUNC4(uiDrawFillModeWinding);
	FUNC0(path, p, 0, 0, 100, 200);
	FUNC5(path);
	FUNC2(p->Context, path, &brush);
	FUNC3(path);
}