
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
typedef int GLFWmonitor ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_FALSE ;
 int GLFW_FOCUSED ;
 int GLFW_ICONIFIED ;
 int GLFW_TRUE ;
 int ** calloc (int,int) ;
 int * create_window (int *) ;
 int error_callback ;
 int exit (int ) ;
 int fflush (int ) ;
 int framebuffer_size_callback ;
 int getopt (int,char**,char*) ;
 int ** glfwGetMonitors (int*) ;
 int * glfwGetPrimaryMonitor () ;
 scalar_t__ glfwGetWindowAttrib (int *,int ) ;
 int glfwInit () ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetFramebufferSizeCallback (int *,int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowFocusCallback (int *,int ) ;
 int glfwSetWindowIconifyCallback (int *,int ) ;
 int glfwSetWindowMaximizeCallback (int *,int ) ;
 int glfwSetWindowRefreshCallback (int *,int (*) (int *)) ;
 int glfwSetWindowSizeCallback (int *,int ) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 int printf (char*,char*,char*) ;
 int stdout ;
 int usage () ;
 int window_focus_callback ;
 int window_iconify_callback ;
 int window_maximize_callback ;
 int window_refresh_callback (int *) ;
 int window_size_callback ;

int main(int argc, char** argv)
{
    int ch, i, window_count;
    int fullscreen = GLFW_FALSE, all_monitors = GLFW_FALSE;
    GLFWwindow** windows;

    while ((ch = getopt(argc, argv, "afhn")) != -1)
    {
        switch (ch)
        {
            case 'a':
                all_monitors = GLFW_TRUE;
                break;

            case 'h':
                usage();
                exit(EXIT_SUCCESS);

            case 'f':
                fullscreen = GLFW_TRUE;
                break;

            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    if (fullscreen && all_monitors)
    {
        int monitor_count;
        GLFWmonitor** monitors = glfwGetMonitors(&monitor_count);

        window_count = monitor_count;
        windows = calloc(window_count, sizeof(GLFWwindow*));

        for (i = 0; i < monitor_count; i++)
        {
            windows[i] = create_window(monitors[i]);
            if (!windows[i])
                break;
        }
    }
    else
    {
        GLFWmonitor* monitor = ((void*)0);

        if (fullscreen)
            monitor = glfwGetPrimaryMonitor();

        window_count = 1;
        windows = calloc(window_count, sizeof(GLFWwindow*));
        windows[0] = create_window(monitor);
    }

    for (i = 0; i < window_count; i++)
    {
        glfwSetKeyCallback(windows[i], key_callback);
        glfwSetFramebufferSizeCallback(windows[i], framebuffer_size_callback);
        glfwSetWindowSizeCallback(windows[i], window_size_callback);
        glfwSetWindowFocusCallback(windows[i], window_focus_callback);
        glfwSetWindowIconifyCallback(windows[i], window_iconify_callback);
        glfwSetWindowMaximizeCallback(windows[i], window_maximize_callback);
        glfwSetWindowRefreshCallback(windows[i], window_refresh_callback);

        window_refresh_callback(windows[i]);

        printf("Window is %s and %s\n",
            glfwGetWindowAttrib(windows[i], GLFW_ICONIFIED) ? "iconified" : "restored",
            glfwGetWindowAttrib(windows[i], GLFW_FOCUSED) ? "focused" : "defocused");
    }

    for (;;)
    {
        glfwWaitEvents();

        for (i = 0; i < window_count; i++)
        {
            if (glfwWindowShouldClose(windows[i]))
                break;
        }

        if (i < window_count)
            break;


        fflush(stdout);
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
