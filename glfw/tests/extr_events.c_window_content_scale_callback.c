
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int number; } ;
typedef TYPE_1__ Slot ;
typedef int GLFWwindow ;


 int counter ;
 double glfwGetTime () ;
 TYPE_1__* glfwGetWindowUserPointer (int *) ;
 int printf (char*,int ,int,double,float,float) ;

__attribute__((used)) static void window_content_scale_callback(GLFWwindow* window, float xscale, float yscale)
{
    Slot* slot = glfwGetWindowUserPointer(window);
    printf("%08x to %i at %0.3f: Window content scale: %0.3f %0.3f\n",
           counter++, slot->number, glfwGetTime(), xscale, yscale);
}
