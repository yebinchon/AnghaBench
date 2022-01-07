
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; } ;
typedef TYPE_1__ State ;
typedef int Htop_Reaction ;


 int HTOP_REFRESH ;
 int HTOP_SAVE_SETTINGS ;
 int Settings_invertSortOrder (int ) ;

__attribute__((used)) static Htop_Reaction actionInvertSortOrder(State* st) {
   Settings_invertSortOrder(st->settings);
   return HTOP_REFRESH | HTOP_SAVE_SETTINGS;
}
