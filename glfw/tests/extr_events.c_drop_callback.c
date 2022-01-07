
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
 int printf (char*,int,...) ;

__attribute__((used)) static void drop_callback(GLFWwindow* window, int count, const char* paths[])
{
    int i;
    Slot* slot = glfwGetWindowUserPointer(window);

    printf("%08x to %i at %0.3f: Drop input\n",
           counter++, slot->number, glfwGetTime());

    for (i = 0; i < count; i++)
        printf("  %i: \"%s\"\n", i, paths[i]);
}
