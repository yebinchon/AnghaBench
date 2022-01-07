
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; } ;
struct TYPE_4__ {TYPE_3__* panel; } ;
typedef TYPE_1__ State ;
typedef int Htop_Reaction ;


 int COLS ;
 int HTOP_REDRAW_BAR ;
 scalar_t__ LINES ;
 int Panel_resize (TYPE_3__*,int ,scalar_t__) ;
 int clear () ;

__attribute__((used)) static Htop_Reaction actionResize(State* st) {
   clear();
   Panel_resize(st->panel, COLS, LINES-(st->panel->y)-1);
   return HTOP_REDRAW_BAR;
}
