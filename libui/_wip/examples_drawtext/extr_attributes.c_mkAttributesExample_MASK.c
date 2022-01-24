#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct example {char* name; int /*<<< orphan*/ * key; int /*<<< orphan*/ * mouse; int /*<<< orphan*/  draw; int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {int /*<<< orphan*/  Align; int /*<<< orphan*/ * DefaultFont; int /*<<< orphan*/  String; } ;

/* Variables and functions */
 struct example attributesExample ; 
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  changeFont ; 
 int /*<<< orphan*/  defaultFont ; 
 int /*<<< orphan*/  draw ; 
 int /*<<< orphan*/  fontButton ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  panel ; 
 TYPE_1__ params ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  showLineBounds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawTextAlignLeft ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct example *FUNC7(void)
{
	panel = FUNC6();
	showLineBounds = FUNC0("Show Line Bounds");
	fontButton = FUNC5();
	FUNC4(fontButton, changeFont, NULL);
	// TODO set the font button to the current defaultFont
	FUNC2(panel, FUNC3(fontButton), 0);

	attributesExample.name = "Attributed Text";
	attributesExample.panel = FUNC3(panel);
	attributesExample.draw = draw;
	attributesExample.mouse = NULL;
	attributesExample.key = NULL;

	FUNC1();
	params.String = attrstr;
	params.DefaultFont = &defaultFont;
	params.Align = uiDrawTextAlignLeft;

	return &attributesExample;
}