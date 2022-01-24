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
typedef  int /*<<< orphan*/  i3String ;
typedef  int /*<<< orphan*/  color_t ;

/* Variables and functions */
 int TEXT_PADDING ; 
 int WIN_WIDTH ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  surface ; 

__attribute__((used)) static void FUNC5(int col, int row, char *text, color_t fg, color_t bg) {
    int x = FUNC0(col);
    int y = FUNC4(row);
    i3String *string = FUNC3(text);
    FUNC1(string, &surface, fg, bg, x, y, WIN_WIDTH - x - TEXT_PADDING);
    FUNC2(string);
}