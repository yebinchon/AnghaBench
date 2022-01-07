
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b; int g; int r; } ;
typedef int GLFWwindow ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int GLFW_DECORATED ;
 int GLFW_FALSE ;
 int GLFW_FOCUS_ON_SHOW ;
 int GLFW_TRUE ;
 int GLFW_VISIBLE ;
 int GL_COLOR_BUFFER_BIT ;
 TYPE_1__* colors ;
 int error_callback ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int glClear (int ) ;
 int glClearColor (int ,int ,int ,float) ;
 int gladLoadGL (int ) ;
 int * glfwCreateWindow (int,int,int ,int *,int *) ;
 int glfwGetProcAddress ;
 int glfwGetWindowFrameSize (int *,int*,int*,int*,int*) ;
 int glfwInit () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSetErrorCallback (int ) ;
 int glfwSetKeyCallback (int *,int ) ;
 int glfwSetWindowPos (int *,int,int) ;
 int glfwShowWindow (int *) ;
 int glfwSwapBuffers (int *) ;
 int glfwTerminate () ;
 int glfwWaitEvents () ;
 int glfwWindowHint (int ,int) ;
 scalar_t__ glfwWindowShouldClose (int *) ;
 int key_callback ;
 int * titles ;
 int usage () ;

int main(int argc, char** argv)
{
    int i, ch;
    int decorated = GLFW_FALSE;
    int focusOnShow = GLFW_TRUE;
    int running = GLFW_TRUE;
    GLFWwindow* windows[4];

    while ((ch = getopt(argc, argv, "bfh")) != -1)
    {
        switch (ch)
        {
            case 'b':
                decorated = GLFW_TRUE;
                break;
            case 'f':
                focusOnShow = GLFW_FALSE;
                break;
            case 'h':
                usage();
                exit(EXIT_SUCCESS);
            default:
                usage();
                exit(EXIT_FAILURE);
        }
    }

    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
        exit(EXIT_FAILURE);

    glfwWindowHint(GLFW_DECORATED, decorated);
    glfwWindowHint(GLFW_VISIBLE, GLFW_FALSE);

    for (i = 0; i < 4; i++)
    {
        int left, top, right, bottom;
        if (i)
            glfwWindowHint(GLFW_FOCUS_ON_SHOW, focusOnShow);

        windows[i] = glfwCreateWindow(200, 200, titles[i], ((void*)0), ((void*)0));
        if (!windows[i])
        {
            glfwTerminate();
            exit(EXIT_FAILURE);
        }

        glfwSetKeyCallback(windows[i], key_callback);

        glfwMakeContextCurrent(windows[i]);
        gladLoadGL(glfwGetProcAddress);
        glClearColor(colors[i].r, colors[i].g, colors[i].b, 1.f);

        glfwGetWindowFrameSize(windows[i], &left, &top, &right, &bottom);
        glfwSetWindowPos(windows[i],
                         100 + (i & 1) * (200 + left + right),
                         100 + (i >> 1) * (200 + top + bottom));
    }

    for (i = 0; i < 4; i++)
        glfwShowWindow(windows[i]);

    while (running)
    {
        for (i = 0; i < 4; i++)
        {
            glfwMakeContextCurrent(windows[i]);
            glClear(GL_COLOR_BUFFER_BIT);
            glfwSwapBuffers(windows[i]);

            if (glfwWindowShouldClose(windows[i]))
                running = GLFW_FALSE;
        }

        glfwWaitEvents();
    }

    glfwTerminate();
    exit(EXIT_SUCCESS);
}
