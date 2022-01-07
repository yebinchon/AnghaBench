
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;





 int GLFW_PRESS ;
 int GLFW_TRUE ;
 int cur_icon_color ;
 int glfwSetWindowIcon (int *,int ,int *) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int set_icon (int *,int) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 130:
            glfwSetWindowShouldClose(window, GLFW_TRUE);
            break;
        case 129:
            cur_icon_color = (cur_icon_color + 1) % 5;
            set_icon(window, cur_icon_color);
            break;
        case 128:
            glfwSetWindowIcon(window, 0, ((void*)0));
            break;
    }
}
