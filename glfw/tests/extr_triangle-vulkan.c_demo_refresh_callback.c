
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {int dummy; } ;
typedef int GLFWwindow ;


 int demo_draw (struct demo*) ;
 struct demo* glfwGetWindowUserPointer (int *) ;

__attribute__((used)) static void demo_refresh_callback(GLFWwindow* window) {
    struct demo* demo = glfwGetWindowUserPointer(window);
    demo_draw(demo);
}
