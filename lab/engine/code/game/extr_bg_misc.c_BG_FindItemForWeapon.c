
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ weapon_t ;
struct TYPE_4__ {scalar_t__ giType; scalar_t__ giTag; scalar_t__ classname; } ;
typedef TYPE_1__ gitem_t ;


 int Com_Error (int ,char*,scalar_t__) ;
 int ERR_DROP ;
 scalar_t__ IT_WEAPON ;
 TYPE_1__* bg_itemlist ;

gitem_t *BG_FindItemForWeapon( weapon_t weapon ) {
 gitem_t *it;

 for ( it = bg_itemlist + 1 ; it->classname ; it++) {
  if ( it->giType == IT_WEAPON && it->giTag == weapon ) {
   return it;
  }
 }

 Com_Error( ERR_DROP, "Couldn't find item for weapon %i", weapon);
 return ((void*)0);
}
