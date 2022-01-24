#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float member_0; float member_1; float member_2; } ;
typedef  TYPE_1__ vec3 ;
typedef  scalar_t__ mat4x4 ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_LINES ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__,TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC11(float scale, int steps)
{
    int i;
    float x, y;
    mat4x4 view;

    FUNC8();

    // Set background to some dark bluish grey
    FUNC2(0.05f, 0.05f, 0.2f, 0.0f);
    FUNC1(GL_COLOR_BUFFER_BIT);

    // Setup modelview matrix (flat XY view)
    {
        vec3 eye = { 0.f, 0.f, 1.f };
        vec3 center = { 0.f, 0.f, 0.f };
        vec3 up = { 0.f, 1.f, 0.f };
        FUNC10(view, eye, center, up);
    }
    FUNC6((const GLfloat*) view);

    // We don't want to update the Z-buffer
    FUNC4(GL_FALSE);

    // Set grid color
    FUNC3(0.0f, 0.5f, 0.5f);

    FUNC0(GL_LINES);

    // Horizontal lines
    x = scale * 0.5f * (float) (steps - 1);
    y = -scale * 0.5f * (float) (steps - 1);
    for (i = 0;  i < steps;  i++)
    {
        FUNC9(-x, y, 0.0f);
        FUNC9(x, y, 0.0f);
        y += scale;
    }

    // Vertical lines
    x = -scale * 0.5f * (float) (steps - 1);
    y = scale * 0.5f * (float) (steps - 1);
    for (i = 0;  i < steps;  i++)
    {
        FUNC9(x, -y, 0.0f);
        FUNC9(x, y, 0.0f);
        x += scale;
    }

    FUNC5();

    // Enable Z-buffer writing again
    FUNC4(GL_TRUE);

    FUNC7();
}