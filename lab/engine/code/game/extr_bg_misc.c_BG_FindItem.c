
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pickup_name; scalar_t__ classname; } ;
typedef TYPE_1__ gitem_t ;


 int Q_stricmp (int ,char const*) ;
 TYPE_1__* bg_itemlist ;

gitem_t *BG_FindItem( const char *pickupName ) {
 gitem_t *it;

 for ( it = bg_itemlist + 1 ; it->classname ; it++ ) {
  if ( !Q_stricmp( it->pickup_name, pickupName ) )
   return it;
 }

 return ((void*)0);
}
