
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float x; float y; } ;
struct TYPE_4__ {float x; float y; } ;
typedef int GLFWwindow ;


 scalar_t__ cursor_method ;
 TYPE_2__ cursor_new ;
 TYPE_2__ cursor_pos ;
 scalar_t__ cursor_sync_query ;
 TYPE_1__ cursor_vel ;
 int glfwGetCursorPos (int *,double*,double*) ;

void sample_input(GLFWwindow* window)
{
    float a = .25;

    if (cursor_method == cursor_sync_query) {
        double x, y;
        glfwGetCursorPos(window, &x, &y);
        cursor_new.x = (float) x;
        cursor_new.y = (float) y;
    }

    cursor_vel.x = (cursor_new.x - cursor_pos.x) * a + cursor_vel.x * (1 - a);
    cursor_vel.y = (cursor_new.y - cursor_pos.y) * a + cursor_vel.y * (1 - a);
    cursor_pos = cursor_new;
}
