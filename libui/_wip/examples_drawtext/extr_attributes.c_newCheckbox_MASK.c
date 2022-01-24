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
typedef  int /*<<< orphan*/  uiCheckbox ;

/* Variables and functions */
 int /*<<< orphan*/  checkboxChecked ; 
 int /*<<< orphan*/  panel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static uiCheckbox *FUNC4(const char *text)
{
	uiCheckbox *c;

	c = FUNC3(text);
	FUNC1(c, checkboxChecked, NULL);
	FUNC0(panel, FUNC2(c), 0);
	return c;
}