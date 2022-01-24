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
struct TYPE_5__ {void* UnderlineThickness; void* UnderlinePos; scalar_t__ Leading; void* Descent; void* Ascent; } ;
typedef  TYPE_1__ uiDrawTextFontMetrics ;
struct TYPE_6__ {int /*<<< orphan*/  f; } ;
typedef  TYPE_2__ uiDrawTextFont ;
typedef  int /*<<< orphan*/  PangoFontMetrics ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(uiDrawTextFont *font, uiDrawTextFontMetrics *metrics)
{
	PangoFontMetrics *pm;

	pm = FUNC1(font->f, NULL);
	metrics->Ascent = FUNC0(FUNC2(pm));
	metrics->Descent = FUNC0(FUNC3(pm));
	// Pango doesn't seem to expose this :( Use 0 and hope for the best.
	metrics->Leading = 0;
	metrics->UnderlinePos = FUNC0(FUNC4(pm));
	metrics->UnderlineThickness = FUNC0(FUNC5(pm));
	FUNC6(pm);
}