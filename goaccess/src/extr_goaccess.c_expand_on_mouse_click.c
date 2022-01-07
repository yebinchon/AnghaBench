
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mouse_support; } ;
struct TYPE_4__ {int bstate; int y; } ;
typedef TYPE_1__ MEVENT ;


 int BUTTON1_CLICKED ;
 int OK ;
 TYPE_3__ conf ;
 int expand_module_from_ypos (int ) ;
 int getmouse (TYPE_1__*) ;

__attribute__((used)) static void
expand_on_mouse_click (void)
{
  int ok_mouse;
  MEVENT event;

  ok_mouse = getmouse (&event);
  if (!conf.mouse_support || ok_mouse != OK)
    return;

  if (event.bstate & BUTTON1_CLICKED)
    expand_module_from_ypos (event.y);
}
