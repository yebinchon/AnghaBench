
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; } ;
typedef TYPE_1__ State ;
typedef int Process ;
typedef int OpenFilesScreen ;
typedef int Object ;
typedef int InfoScreen ;
typedef int Htop_Reaction ;


 int CRT_enableDelay () ;
 int HTOP_OK ;
 int HTOP_REDRAW_BAR ;
 int HTOP_REFRESH ;
 int InfoScreen_run (int *) ;
 int OpenFilesScreen_delete (int *) ;
 int * OpenFilesScreen_new (int *) ;
 scalar_t__ Panel_getSelected (int ) ;
 int clear () ;

__attribute__((used)) static Htop_Reaction actionLsof(State* st) {
   Process* p = (Process*) Panel_getSelected(st->panel);
   if (!p) return HTOP_OK;
   OpenFilesScreen* ofs = OpenFilesScreen_new(p);
   InfoScreen_run((InfoScreen*)ofs);
   OpenFilesScreen_delete((Object*)ofs);
   clear();
   CRT_enableDelay();
   return HTOP_REFRESH | HTOP_REDRAW_BAR;
}
