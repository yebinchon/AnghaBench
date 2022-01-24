#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Align; int /*<<< orphan*/  Width; int /*<<< orphan*/ * DefaultFont; int /*<<< orphan*/  String; } ;
typedef  TYPE_1__ uiDrawTextLayoutParams ;
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawFontDescriptor ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_7__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  AreaWidth; } ;
typedef  TYPE_2__ uiAreaDrawParams ;
typedef  int /*<<< orphan*/  uiArea ;

/* Variables and functions */
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  fontButton ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawTextAlignLeft ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
	uiDrawTextLayout *layout;
	uiDrawTextLayoutParams lp;
	uiDrawFontDescriptor desc;

	FUNC0(&lp, 0, sizeof (uiDrawTextLayoutParams));
	lp.String = attrstr;
	FUNC4(fontButton, &desc);
	lp.DefaultFont = &desc;
	lp.Width = p->AreaWidth;
	lp.Align = uiDrawTextAlignLeft;
	layout = FUNC2(&lp);
	FUNC3(p->Context, layout, 0, 0);
	FUNC1(layout);
}