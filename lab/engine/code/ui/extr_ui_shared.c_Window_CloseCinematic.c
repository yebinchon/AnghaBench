
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ style; int cinematic; } ;
typedef TYPE_1__ windowDef_t ;
struct TYPE_5__ {int (* stopCinematic ) (int) ;} ;


 TYPE_3__* DC ;
 scalar_t__ WINDOW_STYLE_CINEMATIC ;
 int stub1 (int) ;

__attribute__((used)) static void Window_CloseCinematic(windowDef_t *window) {
 if (window->style == WINDOW_STYLE_CINEMATIC && window->cinematic >= 0) {
  DC->stopCinematic(window->cinematic);
  window->cinematic = -1;
 }
}
