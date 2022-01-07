
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {int width; int height; } ;
typedef int GLFWwindow ;


 int demo_resize (struct demo*) ;
 struct demo* glfwGetWindowUserPointer (int *) ;

__attribute__((used)) static void demo_resize_callback(GLFWwindow* window, int width, int height) {
    struct demo* demo = glfwGetWindowUserPointer(window);
    demo->width = width;
    demo->height = height;
    demo_resize(demo);
}
