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
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int FOUNTAIN_SIDE_POINTS ; 
 int FOUNTAIN_SWEEP_STEPS ; 
 int /*<<< orphan*/  GL_COMPILE_AND_EXECUTE ; 
 int /*<<< orphan*/  GL_DIFFUSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_SHININESS ; 
 int /*<<< orphan*/  GL_SPECULAR ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 double M_PI ; 
 scalar_t__ FUNC0 (double) ; 
 int /*<<< orphan*/  fountain_diffuse ; 
 float* fountain_normal ; 
 int /*<<< orphan*/  fountain_shininess ; 
 float* fountain_side ; 
 int /*<<< orphan*/  fountain_specular ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (float,float,float) ; 
 scalar_t__ FUNC11 (double) ; 

__attribute__((used)) static void FUNC12(void)
{
    static GLuint fountain_list = 0;
    double angle;
    float  x, y;
    int m, n;

    // The first time, we build the fountain display list
    if (!fountain_list)
    {
        fountain_list = FUNC5(1);
        FUNC8(fountain_list, GL_COMPILE_AND_EXECUTE);

        FUNC7(GL_FRONT, GL_DIFFUSE, fountain_diffuse);
        FUNC7(GL_FRONT, GL_SPECULAR, fountain_specular);
        FUNC6(GL_FRONT, GL_SHININESS, fountain_shininess);

        // Build fountain using triangle strips
        for (n = 0;  n < FOUNTAIN_SIDE_POINTS - 1;  n++)
        {
            FUNC1(GL_TRIANGLE_STRIP);
            for (m = 0;  m <= FOUNTAIN_SWEEP_STEPS;  m++)
            {
                angle = (double) m * (2.0 * M_PI / (double) FOUNTAIN_SWEEP_STEPS);
                x = (float) FUNC0(angle);
                y = (float) FUNC11(angle);

                // Draw triangle strip
                FUNC9(x * fountain_normal[n * 2 + 2],
                           y * fountain_normal[n * 2 + 2],
                           fountain_normal[n * 2 + 3]);
                FUNC10(x * fountain_side[n * 2 + 2],
                           y * fountain_side[n * 2 + 2],
                           fountain_side[n * 2 +3 ]);
                FUNC9(x * fountain_normal[n * 2],
                           y * fountain_normal[n * 2],
                           fountain_normal[n * 2 + 1]);
                FUNC10(x * fountain_side[n * 2],
                           y * fountain_side[n * 2],
                           fountain_side[n * 2 + 1]);
            }

            FUNC3();
        }

        FUNC4();
    }
    else
        FUNC2(fountain_list);
}