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
 int /*<<< orphan*/  attrstr ; 
 struct example basicExample ; 
 int /*<<< orphan*/  defaultFont ; 
 int /*<<< orphan*/  draw ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  panel ; 
 TYPE_1__ params ; 
 void* showExtents ; 
 void* showLineBounds ; 
 void* showLineGuides ; 
 int /*<<< orphan*/  text ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawTextAlignLeft ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct example *FUNC4(void)
{
	panel = FUNC3();
	showExtents = FUNC0("Show Layout Extents");
	showLineBounds = FUNC0("Show Line Bounds");
	showLineGuides = FUNC0("Show Line Guides");

	basicExample.name = "Basic Paragraph of Text";
	basicExample.panel = FUNC1(panel);
	basicExample.draw = draw;
	basicExample.mouse = NULL;
	basicExample.key = NULL;

	attrstr = FUNC2(text);
	params.String = attrstr;
	params.DefaultFont = &defaultFont;
	params.Align = uiDrawTextAlignLeft;

	return &basicExample;
}