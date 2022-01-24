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
typedef  int /*<<< orphan*/  uiDrawTextLayout ;
typedef  int /*<<< orphan*/  uiDrawTextFont ;
typedef  int /*<<< orphan*/  uiAreaHandler ;
struct TYPE_3__ {int /*<<< orphan*/  Context; } ;
typedef  TYPE_1__ uiAreaDrawParams ;
typedef  int /*<<< orphan*/  uiArea ;

/* Variables and functions */
 int /*<<< orphan*/  noZ ; 
 int /*<<< orphan*/  textColorButton ; 
 int /*<<< orphan*/  textFontButton ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,double,double,int,double) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *dp)
{
	uiDrawTextFont *font;
	uiDrawTextLayout *layout;
	double r, g, b, al;
	char surrogates[1 + 4 + 1 + 1];
	char composed[2 + 2 + 2 + 3 + 2 + 1];
	double width, height;

	font = FUNC8(textFontButton);

	layout = FUNC4("One two three four", font, -1);
	FUNC7(layout,
		4, 7,
		1, 0, 0, 1);
	FUNC7(layout,
		8, 14,
		1, 0, 0.5, 0.5);
	FUNC1(textColorButton, &r, &g, &b, &al);
	FUNC7(layout,
		14, 18,
		r, g, b, al);
	FUNC5(dp->Context, 10, 10, layout);
	FUNC6(layout, &width, &height);
	FUNC3(layout);

	surrogates[0] = 'x';
	surrogates[1] = 0xF0;		// surrogates D800 DF08
	surrogates[2] = 0x90;
	surrogates[3] = 0x8C;
	surrogates[4] = 0x88;
	surrogates[5] = 'y';
	surrogates[6] = '\0';

	layout = FUNC4(surrogates, font, -1);
	FUNC7(layout,
		1, 2,
		1, 0, 0.5, 0.5);
	FUNC5(dp->Context, 10, 10 + height, layout);
	FUNC3(layout);

	composed[0] = 'z';
	composed[1] = 'z';
	composed[2] = 0xC3;		// 2
	composed[3] = 0xA9;
	composed[4] = 'z';
	composed[5] = 'z';
	composed[6] = 0x65;		// 5
	composed[7] = 0xCC;
	composed[8] = 0x81;
	composed[9] = 'z';
	composed[10] = 'z';
	composed[11] = '\0';

	layout = FUNC4(composed, font, -1);
	FUNC7(layout,
		2, 3,
		1, 0, 0.5, 0.5);
	FUNC7(layout,
		5, 6,
		1, 0, 0.5, 0.5);
	if (!FUNC0(noZ))
		FUNC7(layout,
			6, 7,
			0.5, 0, 1, 0.5);
	FUNC5(dp->Context, 10, 10 + height + height, layout);
	FUNC3(layout);

	FUNC2(font);
}