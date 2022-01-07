
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;
 int GLFW_MOD_SHIFT ;
 int GLFW_PRESS ;
 int GLFW_TRUE ;
 int glfwSetWindowShouldClose (int *,int ) ;
 double view_rotx ;
 double view_roty ;
 double view_rotz ;

void key( GLFWwindow* window, int k, int s, int action, int mods )
{
  if( action != GLFW_PRESS ) return;

  switch (k) {
  case 128:
    if( mods & GLFW_MOD_SHIFT )
      view_rotz -= 5.0;
    else
      view_rotz += 5.0;
    break;
  case 132:
    glfwSetWindowShouldClose(window, GLFW_TRUE);
    break;
  case 129:
    view_rotx += 5.0;
    break;
  case 133:
    view_rotx -= 5.0;
    break;
  case 131:
    view_roty += 5.0;
    break;
  case 130:
    view_roty -= 5.0;
    break;
  default:
    return;
  }
}
