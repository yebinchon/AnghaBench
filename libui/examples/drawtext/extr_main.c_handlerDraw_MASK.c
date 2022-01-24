#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiFontDescriptor ;
struct TYPE_5__ {scalar_t__ Align; int /*<<< orphan*/  Width; int /*<<< orphan*/ * DefaultFont; int /*<<< orphan*/  String; } ;
typedef  TYPE_1__ uiDrawTextLayoutParams ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  scalar_t__ uiDrawTextAlign ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_6__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  AreaWidth; } ;
typedef  TYPE_2__ uiAreaDrawParams ;
typedef  int /*<<< orphan*/  uiArea ;

/* Variables and functions */
 int /*<<< orphan*/  alignment ; 
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  fontButton ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
	uiDrawTextLayout *textLayout;
	uiFontDescriptor defaultFont;
	uiDrawTextLayoutParams params;

	params.String = attrstr;
	FUNC4(fontButton, &defaultFont);
	params.DefaultFont = &defaultFont;
	params.Width = p->AreaWidth;
	params.Align = (uiDrawTextAlign) FUNC0(alignment);
	textLayout = FUNC2(&params);
	FUNC3(p->Context, textLayout, 0, 0);
	FUNC1(textLayout);
	FUNC5(&defaultFont);
}