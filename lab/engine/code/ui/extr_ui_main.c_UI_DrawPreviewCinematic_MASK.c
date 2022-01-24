#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_4__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ rectDef_t ;
struct TYPE_5__ {int previewMovie; size_t movieIndex; int /*<<< orphan*/ * movieList; } ;

/* Variables and functions */
 int CIN_loop ; 
 int CIN_silent ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rectDef_t *rect, float scale, vec4_t color) {
	if (uiInfo.previewMovie > -2) {
		uiInfo.previewMovie = FUNC1(FUNC3("%s.roq", uiInfo.movieList[uiInfo.movieIndex]), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
		if (uiInfo.previewMovie >= 0) {
		  FUNC2(uiInfo.previewMovie);
			FUNC0(uiInfo.previewMovie, rect->x, rect->y, rect->w, rect->h);
		} else {
			uiInfo.previewMovie = -2;
		}
	} 

}