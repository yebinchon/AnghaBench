
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int title ;
struct TYPE_8__ {int width; int height; int blueBits; int greenBits; int redBits; int refreshRate; } ;
struct TYPE_7__ {int number; int window; int closeable; } ;
typedef TYPE_1__ Slot ;
typedef TYPE_2__ GLFWvidmode ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_BLUE_BITS ;
 int GLFW_GREEN_BITS ;
 int GLFW_RED_BITS ;
 int GLFW_REFRESH_RATE ;
 int GLFW_TRUE ;
 TYPE_1__* calloc (int,int) ;
 int char_callback ;
 int cursor_enter_callback ;
 int cursor_position_callback ;
 int drop_callback ;
 int error_callback ;
 int exit (int ) ;
 int fflush (int ) ;
 int framebuffer_size_callback ;
 int free (TYPE_1__*) ;
 int getopt (int,char**,char*) ;
 int gladLoadGL (int ) ;
 int glfwCreateWindow (int,int,char*,int *,int *) ;
 char* glfwGetMonitorName (int *) ;
 int * glfwGetPrimaryMonitor () ;
 int glfwGetProcAddress ;
 TYPE_2__* glfwGetVideoMode (int *) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int ) ;
 int glfwSetCharCallback (int ,int ) ;
 int glfwSetCursorEnterCallback (int ,int ) ;
 int glfwSetCursorPosCallback (int ,int ) ;
 int glfwSetDropCallback (int ,int ) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int ,int ) ;
 int glfwSetJoystickCallback (int ) ;
 int glfwSetKeyCallback (int ,int ) ;
 int glfwSetMonitorCallback (int ) ;
 int glfwSetMouseButtonCallback (int ,int ) ;
 int glfwSetScrollCallback (int ,int ) ;
 int glfwSetWindowCloseCallback (int ,int ) ;
 int glfwSetWindowContentScaleCallback (int ,int ) ;
 int glfwSetWindowFocusCallback (int ,int ) ;
 int glfwSetWindowIconifyCallback (int ,int ) ;
 int glfwSetWindowMaximizeCallback (int ,int ) ;
 int glfwSetWindowPosCallback (int ,int ) ;
 int glfwSetWindowRefreshCallback (int ,int ) ;
 int glfwSetWindowSizeCallback (int ,int ) ;
 int glfwSetWindowUserPointer (int ,TYPE_1__*) ;
 int glfwSwapInterval (int) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowHint (int ,int ) ;
 scalar_t__ glfwWindowShouldClose (int ) ;
 int joystick_callback ;
 int key_callback ;
 int monitor_callback ;
 int mouse_button_callback ;
 int optarg ;
 int printf (char*,...) ;
 int scroll_callback ;
 int snprintf (char*,int,char*,int) ;
 int stdout ;
 scalar_t__ strtoul (int ,int *,int) ;
 int usage () ;
 int window_close_callback ;
 int window_content_scale_callback ;
 int window_focus_callback ;
 int window_iconify_callback ;
 int window_maximize_callback ;
 int window_pos_callback ;
 int window_refresh_callback ;
 int window_size_callback ;

int main(int argc, char** argv)
{
    Slot* slots;
    GLFWmonitor* monitor = ((void*)0);
    int ch, i, width, height, count = 1;

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    printf("Library initialized\n");

    glfwSetMonitorCallback(monitor_callback);
    glfwSetJoystickCallback(joystick_callback);

    while ((ch = getopt(argc, argv, "hfn:")) != -1)
    {
        switch (ch)
        {
            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            case 'f':
                monitor = glfwGetPrimaryMonitor();
                break;

            case 'n':
                count = (int) strtoul(optarg, ((void*)0), 10);
                break;

            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    if (monitor)
    {
        const GLFWvidmode* mode = glfwGetVideoMode(monitor);

        glfwWindowHint(GLFW_REFRESH_RATE, mode->refreshRate);
        glfwWindowHint(GLFW_RED_BITS, mode->redBits);
        glfwWindowHint(GLFW_GREEN_BITS, mode->greenBits);
        glfwWindowHint(GLFW_BLUE_BITS, mode->blueBits);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    slots = calloc(count, sizeof(Slot));

    for (i = 0; i < count; i++)
    {
        char title[128];

        slots[i].closeable = GLFW_TRUE;
        slots[i].number = i + 1;

        snprintf(title, sizeof(title), "Event Linter (Window %i)", slots[i].number);

        if (monitor)
        {
            printf("Creating full screen window %i (%ix%i on %s)\n",
                   slots[i].number,
                   width, height,
                   glfwGetMonitorName(monitor));
        }
        else
        {
            printf("Creating windowed mode window %i (%ix%i)\n",
                   slots[i].number,
                   width, height);
        }

        slots[i].window = glfwCreateWindow(width, height, title, monitor, ((void*)0));
        if (!slots[i].window)
        {
            free(slots);
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

        glfwSetWindowUserPointer(slots[i].window, slots + i);

        glfwSetWindowPosCallback(slots[i].window, window_pos_callback);
        glfwSetWindowSizeCallback(slots[i].window, window_size_callback);
        glfwSetFramebufferSizeCallback(slots[i].window, framebuffer_size_callback);
        glfwSetWindowContentScaleCallback(slots[i].window, window_content_scale_callback);
        glfwSetWindowCloseCallback(slots[i].window, window_close_callback);
        glfwSetWindowRefreshCallback(slots[i].window, window_refresh_callback);
        glfwSetWindowFocusCallback(slots[i].window, window_focus_callback);
        glfwSetWindowIconifyCallback(slots[i].window, window_iconify_callback);
        glfwSetWindowMaximizeCallback(slots[i].window, window_maximize_callback);
        glfwSetMouseButtonCallback(slots[i].window, mouse_button_callback);
        glfwSetCursorPosCallback(slots[i].window, cursor_position_callback);
        glfwSetCursorEnterCallback(slots[i].window, cursor_enter_callback);
        glfwSetScrollCallback(slots[i].window, scroll_callback);
        glfwSetKeyCallback(slots[i].window, key_callback);
        glfwSetCharCallback(slots[i].window, char_callback);
        glfwSetDropCallback(slots[i].window, drop_callback);

        glfwMakeContextCurrent(slots[i].window);
        gladLoadGL(glfwGetProcAddress);
        glfwSwapInterval(1);
    }

    printf("Main loop starting\n");

    for (;;)
    {
        for (i = 0; i < count; i++)
        {
            if (glfwWindowShouldClose(slots[i].window))
                break;
        }

        if (i < count)
            break;

        glfwWaitEvents();


        fflush(stdout);
    }

    free(slots);
    glfwTerminate();
    exit(EXIT_SUCCESS);
}
