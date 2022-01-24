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
struct TYPE_3__ {scalar_t__ Key; int ExtKey; scalar_t__ Up; } ;
typedef  TYPE_1__ uiAreaKeyEvent ;

/* Variables and functions */
 int /*<<< orphan*/  attrstr ; 
 int /*<<< orphan*/  caretPos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
#define  uiExtKeyDown 131 
#define  uiExtKeyLeft 130 
#define  uiExtKeyRight 129 
#define  uiExtKeyUp 128 

__attribute__((used)) static int FUNC4(uiAreaKeyEvent *e)
{
	size_t grapheme;

	if (e->Up)
		return 0;
	if (e->Key != 0)
		return 0;
	switch (e->ExtKey) {
	case uiExtKeyUp:
		// TODO
		return 1;
	case uiExtKeyDown:
		// TODO
		return 1;
	case uiExtKeyLeft:
		grapheme = FUNC1(attrstr, caretPos);
		if (grapheme == 0)
			return 0;
		grapheme--;
		caretPos = FUNC2(attrstr, grapheme);
		FUNC0();
		return 1;
	case uiExtKeyRight:
		grapheme = FUNC1(attrstr, caretPos);
		if (grapheme == FUNC3(attrstr))
			return 0;
		grapheme++;
		caretPos = FUNC2(attrstr, grapheme);
		FUNC0();
		return 1;
	}
	return 0;
}