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
struct TYPE_3__ {size_t Italic; size_t Stretch; int /*<<< orphan*/  Size; int /*<<< orphan*/  Weight; int /*<<< orphan*/  Family; } ;
typedef  TYPE_1__ uiFontDescriptor ;
typedef  scalar_t__ PangoStyle ;
typedef  scalar_t__ PangoStretch ;
typedef  int /*<<< orphan*/  PangoFontDescription ;

/* Variables and functions */
 scalar_t__* pangoItalics ; 
 scalar_t__* pangoStretches ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t uiTextItalicItalic ; 
 size_t uiTextItalicNormal ; 
 size_t uiTextStretchUltraCondensed ; 
 size_t uiTextStretchUltraExpanded ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(PangoFontDescription *pdesc, uiFontDescriptor *uidesc)
{
	PangoStyle pitalic;
	PangoStretch pstretch;

	uidesc->Family = FUNC6(FUNC0(pdesc));
	pitalic = FUNC3(pdesc);
	// TODO reverse the above misalignment if it is corrected
	uidesc->Weight = FUNC4(pdesc);
	pstretch = FUNC2(pdesc);
	// absolute size does not matter because, as above, 1 device unit == 1 cairo point
	uidesc->Size = FUNC5(FUNC1(pdesc));

	for (uidesc->Italic = uiTextItalicNormal; uidesc->Italic < uiTextItalicItalic; uidesc->Italic++)
		if (pangoItalics[uidesc->Italic] == pitalic)
			break;
	for (uidesc->Stretch = uiTextStretchUltraCondensed; uidesc->Stretch < uiTextStretchUltraExpanded; uidesc->Stretch++)
		if (pangoStretches[uidesc->Stretch] == pstretch)
			break;
}