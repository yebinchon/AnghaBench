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
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_POINTS ; 
 int /*<<< orphan*/  GL_QUERY_RESULT ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_SAMPLES_PASSED ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  occlusion_query ; 
 scalar_t__ swap_clear ; 
 scalar_t__ swap_finish ; 
 scalar_t__ swap_occlusion_query ; 
 scalar_t__ swap_read_pixels ; 

void FUNC11(GLFWwindow* window)
{
    FUNC10(window);

    if (swap_clear)
        FUNC2(GL_COLOR_BUFFER_BIT);

    if (swap_finish)
        FUNC5();

    if (swap_occlusion_query) {
        GLint occlusion_result;
        if (!occlusion_query)
            FUNC6(1, &occlusion_query);
        FUNC1(GL_SAMPLES_PASSED, occlusion_query);
        FUNC0(GL_POINTS);
        FUNC9(0, 0);
        FUNC3();
        FUNC4(GL_SAMPLES_PASSED);
        FUNC7(occlusion_query, GL_QUERY_RESULT, &occlusion_result);
    }

    if (swap_read_pixels) {
        unsigned char rgba[4];
        FUNC8(0, 0, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
    }
}