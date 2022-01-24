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
struct example {char* name; int /*<<< orphan*/  key; int /*<<< orphan*/  mouse; int /*<<< orphan*/  draw; int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {int /*<<< orphan*/  Align; int /*<<< orphan*/ * DefaultFont; int /*<<< orphan*/  String; } ;

/* Variables and functions */
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  caretLabel ; 
 int /*<<< orphan*/  changeFont ; 
 int /*<<< orphan*/  changeTextAlign ; 
 int /*<<< orphan*/  defaultFont ; 
 int /*<<< orphan*/  draw ; 
 int /*<<< orphan*/  fontButton ; 
 struct example hitTestExample ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  mouse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  panel ; 
 TYPE_1__ params ; 
 int /*<<< orphan*/  showLineBounds ; 
 int /*<<< orphan*/  text ; 
 int /*<<< orphan*/  textAlign ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawTextAlignLeft ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  vbox ; 

struct example *FUNC12(void)
{
	panel = FUNC9();
	vbox = FUNC11();
	// TODO the second vbox causes this not to stretch at least on OS X
	FUNC1(panel, FUNC4(vbox), 1);
	caretLabel = FUNC10("Caret information is shown here");
	FUNC1(vbox, FUNC4(caretLabel), 0);
	showLineBounds = FUNC0(vbox, "Show Line Bounds (for debugging metrics)");
	vbox = FUNC11();
	FUNC1(panel, FUNC4(vbox), 0);
	fontButton = FUNC8();
	FUNC5(fontButton, changeFont, NULL);
	// TODO set the font button to the current defaultFont
	FUNC1(vbox, FUNC4(fontButton), 0);
	textAlign = FUNC7();
	// note that these are in the order in the enum
	FUNC2(textAlign, "Left");
	FUNC2(textAlign, "Center");
	FUNC2(textAlign, "Right");
	FUNC3(textAlign, changeTextAlign, NULL);
	FUNC1(vbox, FUNC4(textAlign), 0);

	hitTestExample.name = "Hit-Testing and Grapheme Boundaries";
	hitTestExample.panel = FUNC4(panel);
	hitTestExample.draw = draw;
	hitTestExample.mouse = mouse;
	hitTestExample.key = key;

	attrstr = FUNC6(text);
	params.String = attrstr;
	params.DefaultFont = &defaultFont;
	params.Align = uiDrawTextAlignLeft;

	return &hitTestExample;
}