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
typedef  int /*<<< orphan*/  cellRendererButton ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_CELL_RENDERER_MODE_ACTIVATABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(cellRendererButton *c)
{
	FUNC1(c, "mode", GTK_CELL_RENDERER_MODE_ACTIVATABLE, NULL);
	// the standard cell renderers all do this
	FUNC2(FUNC0(c), 2, 2);
}