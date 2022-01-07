
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float x; float y; } ;
typedef int GLFWwindow ;


 TYPE_1__ cursor_new ;

void cursor_pos_callback(GLFWwindow* window, double xpos, double ypos)
{
    cursor_new.x = (float) xpos;
    cursor_new.y = (float) ypos;
}
