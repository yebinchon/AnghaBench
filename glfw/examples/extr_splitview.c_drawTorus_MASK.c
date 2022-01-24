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
 int /*<<< orphan*/  GL_COMPILE_AND_EXECUTE ; 
 int /*<<< orphan*/  GL_QUAD_STRIP ; 
 double M_PI ; 
 double TORUS_MAJOR ; 
 int TORUS_MAJOR_RES ; 
 double TORUS_MINOR ; 
 int TORUS_MINOR_RES ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float) ; 
 double FUNC9 (double) ; 
 double FUNC10 (double) ; 

__attribute__((used)) static void FUNC11(void)
{
    static GLuint torus_list = 0;
    int    i, j, k;
    double s, t, x, y, z, nx, ny, nz, scale, twopi;

    if (!torus_list)
    {
        // Start recording displaylist
        torus_list = FUNC5(1);
        FUNC6(torus_list, GL_COMPILE_AND_EXECUTE);

        // Draw torus
        twopi = 2.0 * M_PI;
        for (i = 0;  i < TORUS_MINOR_RES;  i++)
        {
            FUNC1(GL_QUAD_STRIP);
            for (j = 0;  j <= TORUS_MAJOR_RES;  j++)
            {
                for (k = 1;  k >= 0;  k--)
                {
                    s = (i + k) % TORUS_MINOR_RES + 0.5;
                    t = j % TORUS_MAJOR_RES;

                    // Calculate point on surface
                    x = (TORUS_MAJOR + TORUS_MINOR * FUNC0(s * twopi / TORUS_MINOR_RES)) * FUNC0(t * twopi / TORUS_MAJOR_RES);
                    y = TORUS_MINOR * FUNC9(s * twopi / TORUS_MINOR_RES);
                    z = (TORUS_MAJOR + TORUS_MINOR * FUNC0(s * twopi / TORUS_MINOR_RES)) * FUNC9(t * twopi / TORUS_MAJOR_RES);

                    // Calculate surface normal
                    nx = x - TORUS_MAJOR * FUNC0(t * twopi / TORUS_MAJOR_RES);
                    ny = y;
                    nz = z - TORUS_MAJOR * FUNC9(t * twopi / TORUS_MAJOR_RES);
                    scale = 1.0 / FUNC10(nx*nx + ny*ny + nz*nz);
                    nx *= scale;
                    ny *= scale;
                    nz *= scale;

                    FUNC7((float) nx, (float) ny, (float) nz);
                    FUNC8((float) x, (float) y, (float) z);
                }
            }

            FUNC3();
        }

        // Stop recording displaylist
        FUNC4();
    }
    else
    {
        // Playback displaylist
        FUNC2(torus_list);
    }
}