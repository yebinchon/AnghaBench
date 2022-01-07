
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int refreshRate; } ;
typedef int GLFWwindow ;
typedef TYPE_1__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int GLFW_CURSOR ;
 int GLFW_CURSOR_DISABLED ;
 int GLFW_CURSOR_HIDDEN ;
 int GLFW_CURSOR_NORMAL ;
 int GLFW_FALSE ;
 int GLFW_MOD_ALT ;
 int GLFW_PRESS ;
 int GLFW_RAW_MOUSE_MOTION ;
 int GLFW_TRUE ;
 int animate_cursor ;
 double cursor_x ;
 double cursor_y ;
 int glfwGetCursorPos (int *,double*,double*) ;
 int glfwGetInputMode (int *,int ) ;
 int * glfwGetPrimaryMonitor () ;
 TYPE_1__* glfwGetVideoMode (int *) ;
 int glfwGetWindowMonitor (int *) ;
 int glfwGetWindowPos (int *,int*,int*) ;
 int glfwGetWindowSize (int *,int*,int*) ;
 int glfwRawMouseMotionSupported () ;
 int glfwSetCursor (int *,int *) ;
 int glfwSetCursorPos (int *,int,int) ;
 int glfwSetInputMode (int *,int ,int ) ;
 int glfwSetWindowMonitor (int *,int *,int,int,int,int,int ) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int glfwSwapInterval (int) ;
 int printf (char*,...) ;
 int ** standard_cursors ;
 int swap_interval ;
 int track_cursor ;
 int * tracking_cursor ;
 int wait_events ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 141:
        {
            animate_cursor = !animate_cursor;
            if (!animate_cursor)
                glfwSetCursor(window, ((void*)0));

            break;
        }

        case 137:
        {
            if (glfwGetInputMode(window, GLFW_CURSOR) != GLFW_CURSOR_DISABLED)
            {
                glfwSetWindowShouldClose(window, GLFW_TRUE);
                break;
            }


        }

        case 134:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            glfwGetCursorPos(window, &cursor_x, &cursor_y);
            printf("(( cursor is normal ))\n");
            break;

        case 140:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            printf("(( cursor is disabled ))\n");
            break;

        case 135:
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_HIDDEN);
            printf("(( cursor is hidden ))\n");
            break;

        case 132:
            if (!glfwRawMouseMotionSupported())
                break;

            if (glfwGetInputMode(window, GLFW_RAW_MOUSE_MOTION))
            {
                glfwSetInputMode(window, GLFW_RAW_MOUSE_MOTION, GLFW_FALSE);
                printf("(( raw input is disabled ))\n");
            }
            else
            {
                glfwSetInputMode(window, GLFW_RAW_MOUSE_MOTION, GLFW_TRUE);
                printf("(( raw input is enabled ))\n");
            }
            break;

        case 131:
            swap_interval = 1 - swap_interval;
            printf("(( swap interval: %i ))\n", swap_interval);
            glfwSwapInterval(swap_interval);
            break;

        case 128:
            wait_events = !wait_events;
            printf("(( %sing for events ))\n", wait_events ? "wait" : "poll");
            break;

        case 130:
            track_cursor = !track_cursor;
            if (track_cursor)
                glfwSetCursor(window, tracking_cursor);
            else
                glfwSetCursor(window, ((void*)0));

            break;

        case 133:
        {
            double x, y;
            glfwGetCursorPos(window, &x, &y);

            printf("Query before set: %f %f (%+f %+f)\n",
                   x, y, x - cursor_x, y - cursor_y);
            cursor_x = x;
            cursor_y = y;

            glfwSetCursorPos(window, cursor_x, cursor_y);
            glfwGetCursorPos(window, &x, &y);

            printf("Query after set: %f %f (%+f %+f)\n",
                   x, y, x - cursor_x, y - cursor_y);
            cursor_x = x;
            cursor_y = y;
            break;
        }

        case 129:
            glfwSetCursorPos(window, 0, 0);
            glfwGetCursorPos(window, &cursor_x, &cursor_y);
            break;

        case 139:
        {
            int width, height;
            glfwGetWindowSize(window, &width, &height);
            glfwSetCursorPos(window, width - 1, height - 1);
            glfwGetCursorPos(window, &cursor_x, &cursor_y);
            break;
        }

        case 148:
            glfwSetCursor(window, ((void*)0));
            break;

        case 147:
            glfwSetCursor(window, standard_cursors[0]);
            break;

        case 146:
            glfwSetCursor(window, standard_cursors[1]);
            break;

        case 145:
            glfwSetCursor(window, standard_cursors[2]);
            break;

        case 144:
            glfwSetCursor(window, standard_cursors[3]);
            break;

        case 143:
            glfwSetCursor(window, standard_cursors[4]);
            break;

        case 142:
            glfwSetCursor(window, standard_cursors[5]);
            break;

        case 136:
        case 138:
        {
            static int x, y, width, height;

            if (mods != GLFW_MOD_ALT)
                return;

            if (glfwGetWindowMonitor(window))
                glfwSetWindowMonitor(window, ((void*)0), x, y, width, height, 0);
            else
            {
                GLFWmonitor* monitor = glfwGetPrimaryMonitor();
                const GLFWvidmode* mode = glfwGetVideoMode(monitor);
                glfwGetWindowPos(window, &x, &y);
                glfwGetWindowSize(window, &width, &height);
                glfwSetWindowMonitor(window, monitor,
                                     0, 0, mode->width, mode->height,
                                     mode->refreshRate);
            }

            glfwGetCursorPos(window, &cursor_x, &cursor_y);
            break;
        }
    }
}
