
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enable_vsync ;
 int glfwSwapInterval (int) ;
 scalar_t__ nk_true ;

void update_vsync()
{
    glfwSwapInterval(enable_vsync == nk_true ? 1 : 0);
}
