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
struct Vertex {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  r; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 TYPE_1__* vertex ; 

void FUNC7(void)
{
    // Use Gouraud (smooth) shading
    FUNC5(GL_SMOOTH);

    // Switch on the z-buffer
    FUNC2(GL_DEPTH_TEST);

    FUNC3(GL_VERTEX_ARRAY);
    FUNC3(GL_COLOR_ARRAY);
    FUNC6(3, GL_FLOAT, sizeof(struct Vertex), vertex);
    FUNC1(3, GL_FLOAT, sizeof(struct Vertex), &vertex[0].r); // Pointer to the first color

    FUNC4(2.0);

    // Background color is black
    FUNC0(0, 0, 0, 0);
}