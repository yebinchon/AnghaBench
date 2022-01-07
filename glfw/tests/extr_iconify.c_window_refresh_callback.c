
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int GL_COLOR_BUFFER_BIT ;
 int glClear (int ) ;
 double glfwGetTime () ;
 int glfwMakeContextCurrent (int *) ;
 int glfwSwapBuffers (int *) ;
 int printf (char*,double) ;

__attribute__((used)) static void window_refresh_callback(GLFWwindow* window)
{
    printf("%0.2f Window refresh\n", glfwGetTime());

    glfwMakeContextCurrent(window);

    glClear(GL_COLOR_BUFFER_BIT);
    glfwSwapBuffers(window);
}
