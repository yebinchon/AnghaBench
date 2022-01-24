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

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (float,float,float) ; 

__attribute__((used)) static void FUNC3(float x1, float y1, float x2, float y2, int depth)
{
    float delta, x, y;

    // Last recursion?
    if (depth >= 5)
        delta = 999999.f;
    else
    {
        x = (float) (FUNC0(x1) < FUNC0(x2) ? FUNC0(x1) : FUNC0(x2));
        y = (float) (FUNC0(y1) < FUNC0(y2) ? FUNC0(y1) : FUNC0(y2));
        delta = x*x + y*y;
    }

    // Recurse further?
    if (delta < 0.1f)
    {
        x = (x1 + x2) * 0.5f;
        y = (y1 + y2) * 0.5f;
        FUNC3(x1, y1,  x,  y, depth + 1);
        FUNC3(x, y1, x2,  y, depth + 1);
        FUNC3(x1,  y,  x, y2, depth + 1);
        FUNC3(x,  y, x2, y2, depth + 1);
    }
    else
    {
        FUNC1(x1 * 30.f, y1 * 30.f);
        FUNC2(  x1 * 80.f, y1 * 80.f, 0.f);
        FUNC1(x2 * 30.f, y1 * 30.f);
        FUNC2(  x2 * 80.f, y1 * 80.f, 0.f);
        FUNC1(x2 * 30.f, y2 * 30.f);
        FUNC2(  x2 * 80.f, y2 * 80.f, 0.f);
        FUNC1(x1 * 30.f, y2 * 30.f);
        FUNC2(  x1 * 80.f, y2 * 80.f, 0.f);
    }
}