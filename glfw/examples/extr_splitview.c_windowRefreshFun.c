
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 scalar_t__ do_redraw ;
 int drawAllViews () ;
 int glfwSwapBuffers (int *) ;

__attribute__((used)) static void windowRefreshFun(GLFWwindow* window)
{
    drawAllViews();
    glfwSwapBuffers(window);
    do_redraw = 0;
}
