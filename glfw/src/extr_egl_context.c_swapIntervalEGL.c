
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ egl; } ;


 TYPE_2__ _glfw ;
 int eglSwapInterval (int ,int) ;

__attribute__((used)) static void swapIntervalEGL(int interval)
{
    eglSwapInterval(_glfw.egl.display, interval);
}
