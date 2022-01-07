
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;




 int GLFW_PRESS ;
 int GLFW_TRUE ;
 int glfwSetWindowShouldClose (int *,int ) ;

__attribute__((used)) static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case 128:
        case 129:
            glfwSetWindowShouldClose(window, GLFW_TRUE);
            break;
    }
}
