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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  refreshRate; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CURSOR ; 
 int /*<<< orphan*/  GLFW_CURSOR_DISABLED ; 
 int /*<<< orphan*/  GLFW_CURSOR_HIDDEN ; 
 int /*<<< orphan*/  GLFW_CURSOR_NORMAL ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
#define  GLFW_KEY_0 148 
#define  GLFW_KEY_1 147 
#define  GLFW_KEY_2 146 
#define  GLFW_KEY_3 145 
#define  GLFW_KEY_4 144 
#define  GLFW_KEY_5 143 
#define  GLFW_KEY_6 142 
#define  GLFW_KEY_A 141 
#define  GLFW_KEY_D 140 
#define  GLFW_KEY_DOWN 139 
#define  GLFW_KEY_ENTER 138 
#define  GLFW_KEY_ESCAPE 137 
#define  GLFW_KEY_F11 136 
#define  GLFW_KEY_H 135 
#define  GLFW_KEY_N 134 
#define  GLFW_KEY_P 133 
#define  GLFW_KEY_R 132 
#define  GLFW_KEY_SPACE 131 
#define  GLFW_KEY_T 130 
#define  GLFW_KEY_UP 129 
#define  GLFW_KEY_W 128 
 int GLFW_MOD_ALT ; 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GLFW_RAW_MOUSE_MOTION ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int animate_cursor ; 
 double cursor_x ; 
 double cursor_y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ ** standard_cursors ; 
 int swap_interval ; 
 int track_cursor ; 
 int /*<<< orphan*/ * tracking_cursor ; 
 int wait_events ; 

__attribute__((used)) static void FUNC15(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_A:
        {
            animate_cursor = !animate_cursor;
            if (!animate_cursor)
                FUNC8(window, NULL);

            break;
        }

        case GLFW_KEY_ESCAPE:
        {
            if (FUNC1(window, GLFW_CURSOR) != GLFW_CURSOR_DISABLED)
            {
                FUNC12(window, GLFW_TRUE);
                break;
            }

            /* FALLTHROUGH */
        }

        case GLFW_KEY_N:
            FUNC10(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            FUNC0(window, &cursor_x, &cursor_y);
            FUNC14("(( cursor is normal ))\n");
            break;

        case GLFW_KEY_D:
            FUNC10(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            FUNC14("(( cursor is disabled ))\n");
            break;

        case GLFW_KEY_H:
            FUNC10(window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);
            FUNC14("(( cursor is hidden ))\n");
            break;

        case GLFW_KEY_R:
            if (!FUNC7())
                break;

            if (FUNC1(window, GLFW_RAW_MOUSE_MOTION))
            {
                FUNC10(window, GLFW_RAW_MOUSE_MOTION, GLFW_FALSE);
                FUNC14("(( raw input is disabled ))\n");
            }
            else
            {
                FUNC10(window, GLFW_RAW_MOUSE_MOTION, GLFW_TRUE);
                FUNC14("(( raw input is enabled ))\n");
            }
            break;

        case GLFW_KEY_SPACE:
            swap_interval = 1 - swap_interval;
            FUNC14("(( swap interval: %i ))\n", swap_interval);
            FUNC13(swap_interval);
            break;

        case GLFW_KEY_W:
            wait_events = !wait_events;
            FUNC14("(( %sing for events ))\n", wait_events ? "wait" : "poll");
            break;

        case GLFW_KEY_T:
            track_cursor = !track_cursor;
            if (track_cursor)
                FUNC8(window, tracking_cursor);
            else
                FUNC8(window, NULL);

            break;

        case GLFW_KEY_P:
        {
            double x, y;
            FUNC0(window, &x, &y);

            FUNC14("Query before set: %f %f (%+f %+f)\n",
                   x, y, x - cursor_x, y - cursor_y);
            cursor_x = x;
            cursor_y = y;

            FUNC9(window, cursor_x, cursor_y);
            FUNC0(window, &x, &y);

            FUNC14("Query after set: %f %f (%+f %+f)\n",
                   x, y, x - cursor_x, y - cursor_y);
            cursor_x = x;
            cursor_y = y;
            break;
        }

        case GLFW_KEY_UP:
            FUNC9(window, 0, 0);
            FUNC0(window, &cursor_x, &cursor_y);
            break;

        case GLFW_KEY_DOWN:
        {
            int width, height;
            FUNC6(window, &width, &height);
            FUNC9(window, width - 1, height - 1);
            FUNC0(window, &cursor_x, &cursor_y);
            break;
        }

        case GLFW_KEY_0:
            FUNC8(window, NULL);
            break;

        case GLFW_KEY_1:
            FUNC8(window, standard_cursors[0]);
            break;

        case GLFW_KEY_2:
            FUNC8(window, standard_cursors[1]);
            break;

        case GLFW_KEY_3:
            FUNC8(window, standard_cursors[2]);
            break;

        case GLFW_KEY_4:
            FUNC8(window, standard_cursors[3]);
            break;

        case GLFW_KEY_5:
            FUNC8(window, standard_cursors[4]);
            break;

        case GLFW_KEY_6:
            FUNC8(window, standard_cursors[5]);
            break;

        case GLFW_KEY_F11:
        case GLFW_KEY_ENTER:
        {
            static int x, y, width, height;

            if (mods != GLFW_MOD_ALT)
                return;

            if (FUNC4(window))
                FUNC11(window, NULL, x, y, width, height, 0);
            else
            {
                GLFWmonitor* monitor = FUNC2();
                const GLFWvidmode* mode = FUNC3(monitor);
                FUNC5(window, &x, &y);
                FUNC6(window, &width, &height);
                FUNC11(window, monitor,
                                     0, 0, mode->width, mode->height,
                                     mode->refreshRate);
            }

            FUNC0(window, &cursor_x, &cursor_y);
            break;
        }
    }
}