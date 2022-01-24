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
struct TYPE_3__ {int Size; size_t Weight; size_t Italic; size_t Stretch; int /*<<< orphan*/  Family; } ;
typedef  TYPE_1__ uiDrawTextFontDescriptor ;
typedef  int /*<<< orphan*/  uiDrawTextFont ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoFont ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pangoItalics ; 
 int /*<<< orphan*/ * pangoStretches ; 
 int /*<<< orphan*/ * pangoWeights ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uiDrawTextFont *FUNC9(const uiDrawTextFontDescriptor *desc)
{
	PangoFont *f;
	PangoFontDescription *pdesc;

	pdesc = FUNC3();
	FUNC4(pdesc,
		desc->Family);
	FUNC5(pdesc,
		(gint) (desc->Size * PANGO_SCALE));
	FUNC8(pdesc,
		pangoWeights[desc->Weight]);
	FUNC7(pdesc,
		pangoItalics[desc->Italic]);
	FUNC6(pdesc,
		pangoStretches[desc->Stretch]);
	f = FUNC1(pdesc);
	FUNC2(pdesc);
	return FUNC0(f, FALSE);			// we hold the initial reference; no need to ref
}