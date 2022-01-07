
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; int header; int pl; int settings; } ;
typedef TYPE_1__ State ;
typedef int Htop_Reaction ;


 int Action_runSetup (int ,int ,int ) ;
 int COLS ;
 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int HTOP_UPDATE_PANELHDR ;
 int Header_calculateHeight (int ) ;
 int LINES ;
 int Panel_move (int ,int ,int) ;
 int Panel_resize (int ,int ,int) ;

__attribute__((used)) static Htop_Reaction actionSetup(State* st) {
   Action_runSetup(st->settings, st->header, st->pl);

   int headerHeight = Header_calculateHeight(st->header);
   Panel_move(st->panel, 0, headerHeight);
   Panel_resize(st->panel, COLS, LINES-headerHeight-1);
   return HTOP_REFRESH | HTOP_REDRAW_BAR | HTOP_UPDATE_PANELHDR;
}
