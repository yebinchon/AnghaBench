
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; int closeable; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;


 int GLFW_KEY_C ;
 int counter ;
 char* glfwGetKeyName (int ,int ) ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int glfwSetWindowShouldClose (int *,int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void window_close_callback(GLFWwindow* window)
{
    Slot* slot = glfwGetWindowUserPointer(window);
    printf("%08x to %i at %0.3f: Window close\n",
           counter++, slot->number, glfwGetTime());

    if (!slot->closeable)
    {
        printf("(( closing is disabled, press %s to re-enable )\n",
               glfwGetKeyName(GLFW_KEY_C, 0));
    }

    glfwSetWindowShouldClose(window, slot->closeable);
}
