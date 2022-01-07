
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ giType; int * world_model; scalar_t__ classname; } ;
typedef TYPE_1__ gitem_t ;


 scalar_t__ IT_WEAPON ;
 TYPE_1__* bg_itemlist ;
 int trap_R_RegisterModel (int ) ;

__attribute__((used)) static void Controls_InitWeapons( void ) {
 gitem_t * item;

 for ( item = bg_itemlist + 1 ; item->classname ; item++ ) {
  if ( item->giType != IT_WEAPON ) {
   continue;
  }
  trap_R_RegisterModel( item->world_model[0] );
 }
}
