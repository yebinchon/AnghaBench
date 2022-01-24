#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {double Leading; scalar_t__ Descent; scalar_t__ Ascent; } ;
typedef  TYPE_1__ uiDrawTextFontMetrics ;
struct TYPE_9__ {int Thickness; double R; double G; double B; double A; int /*<<< orphan*/  MiterLimit; int /*<<< orphan*/  Join; int /*<<< orphan*/  Cap; int /*<<< orphan*/  Type; } ;
typedef  TYPE_2__ uiDrawStrokeParams ;
typedef  int /*<<< orphan*/  uiDrawPath ;
typedef  int /*<<< orphan*/  uiDrawContext ;
typedef  TYPE_2__ uiDrawBrush ;

/* Variables and functions */
 int /*<<< orphan*/  addLeading ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiDrawBrushTypeSolid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawDefaultMiterLimit ; 
 int /*<<< orphan*/  uiDrawFillModeWinding ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiDrawLineCapFlat ; 
 int /*<<< orphan*/  uiDrawLineJoinMiter ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC12(uiDrawContext *c, uiDrawTextFontMetrics *m)
{
	uiDrawPath *p;
	uiDrawBrush b;
	uiDrawStrokeParams sp;
	double leading;
	double y;

	leading = 0;
	if (FUNC1(addLeading))
		leading = m->Leading;

	FUNC0(&b, 0, sizeof (uiDrawBrush));
	b.Type = uiDrawBrushTypeSolid;
	FUNC0(&sp, 0, sizeof (uiDrawStrokeParams));
	sp.Cap = uiDrawLineCapFlat;
	sp.Join = uiDrawLineJoinMiter;
	sp.MiterLimit = uiDrawDefaultMiterLimit;
	sp.Thickness = 2;

	FUNC10(c);

	p = FUNC4(uiDrawFillModeWinding);
	y = 10;
	FUNC8(p, 8, y);
	y += m->Ascent;
	FUNC7(p, 8, y);
	FUNC6(p);
	b.R = 0.94;
	b.G = 0.5;
	b.B = 0.5;
	b.A = 1.0;
	FUNC11(c, p, &b, &sp);
	FUNC3(p);

	p = FUNC4(uiDrawFillModeWinding);
	FUNC8(p, 8, y);
	y += m->Descent;
	FUNC7(p, 8, y);
	FUNC6(p);
	b.R = 0.12;
	b.G = 0.56;
	b.B = 1.0;
	b.A = 1.0;
	FUNC11(c, p, &b, &sp);
	FUNC3(p);

	// and again for the second line
	p = FUNC4(uiDrawFillModeWinding);
	y += leading;
	FUNC8(p, 8, y);
	y += m->Ascent;
	FUNC7(p, 8, y);
	FUNC6(p);
	b.R = 0.94;
	b.G = 0.5;
	b.B = 0.5;
	b.A = 0.75;
	FUNC11(c, p, &b, &sp);
	FUNC3(p);

	p = FUNC4(uiDrawFillModeWinding);
	FUNC8(p, 8, y);
	y += m->Descent;
	FUNC7(p, 8, y);
	FUNC6(p);
	b.R = 0.12;
	b.G = 0.56;
	b.B = 1.0;
	b.A = 0.75;
	FUNC11(c, p, &b, &sp);
	FUNC3(p);

	// and a box to text layout top-left corners
	p = FUNC4(uiDrawFillModeWinding);
	FUNC5(p, 0, 0, 10, 10);
	FUNC6(p);
	FUNC2(c, p);
	b.R = 0.85;
	b.G = 0.65;
	b.B = 0.13;
	b.A = 1.0;
	FUNC11(c, p, &b, &sp);
	FUNC3(p);

	FUNC9(c);
}