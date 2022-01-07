
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {int window; int height; int width; } ;


 int APP_LONG_NAME ;
 int GLFW_CLIENT_API ;
 int GLFW_NO_API ;
 int demo_key_callback ;
 int demo_refresh_callback ;
 int demo_resize_callback ;
 int exit (int) ;
 int fflush (int ) ;
 int glfwCreateWindow (int ,int ,int ,int *,int *) ;
 int glfwSetFramebufferSizeCallback (int ,int ) ;
 int glfwSetKeyCallback (int ,int ) ;
 int glfwSetWindowRefreshCallback (int ,int ) ;
 int glfwSetWindowUserPointer (int ,struct demo*) ;
 int glfwWindowHint (int ,int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void demo_create_window(struct demo *demo) {
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);

    demo->window = glfwCreateWindow(demo->width,
                                    demo->height,
                                    APP_LONG_NAME,
                                    ((void*)0),
                                    ((void*)0));
    if (!demo->window) {

        printf("Cannot create a window in which to draw!\n");
        fflush(stdout);
        exit(1);
    }

    glfwSetWindowUserPointer(demo->window, demo);
    glfwSetWindowRefreshCallback(demo->window, demo_refresh_callback);
    glfwSetFramebufferSizeCallback(demo->window, demo_resize_callback);
    glfwSetKeyCallback(demo->window, demo_key_callback);
}
