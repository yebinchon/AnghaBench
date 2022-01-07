
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_CONNECTED ;
 int GLFW_DISCONNECTED ;
 int GLFW_FOCUSED ;
 int glfwGetWindowAttrib (int ,int ) ;
 int glfwRequestWindowAttention (int ) ;
 int joystick_count ;
 int* joysticks ;
 int window ;

__attribute__((used)) static void joystick_callback(int jid, int event)
{
    if (event == GLFW_CONNECTED)
        joysticks[joystick_count++] = jid;
    else if (event == GLFW_DISCONNECTED)
    {
        int i;

        for (i = 0; i < joystick_count; i++)
        {
            if (joysticks[i] == jid)
                break;
        }

        for (i = i + 1; i < joystick_count; i++)
            joysticks[i - 1] = joysticks[i];

        joystick_count--;
    }

    if (!glfwGetWindowAttrib(window, GLFW_FOCUSED))
        glfwRequestWindowAttention(window);
}
