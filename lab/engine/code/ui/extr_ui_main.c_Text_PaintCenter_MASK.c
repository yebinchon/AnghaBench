#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_TEXTSTYLE_SHADOWEDMORE ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,float,int /*<<< orphan*/ ) ; 

void FUNC2(float x, float y, float scale, vec4_t color, const char *text, float adjust) {
	int len = FUNC1(text, scale, 0);
	FUNC0(x - len / 2, y, scale, color, text, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
}