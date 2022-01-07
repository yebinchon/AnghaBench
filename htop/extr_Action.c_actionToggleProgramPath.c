
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* settings; } ;
struct TYPE_4__ {int showProgramPath; } ;
typedef TYPE_2__ State ;
typedef int Htop_Reaction ;


 int HTOP_REFRESH ;
 int HTOP_SAVE_SETTINGS ;

__attribute__((used)) static Htop_Reaction actionToggleProgramPath(State* st) {
   st->settings->showProgramPath = !st->settings->showProgramPath;
   return HTOP_REFRESH | HTOP_SAVE_SETTINGS;
}
