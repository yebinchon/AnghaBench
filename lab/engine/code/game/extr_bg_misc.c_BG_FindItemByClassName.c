
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ classname; } ;
typedef TYPE_1__ gitem_t ;


 int BG_UpdateItems () ;
 int Q_stricmp (scalar_t__,char const*) ;
 int bg_defaultNumItems ;
 TYPE_1__* bg_itemlist ;
 scalar_t__ dmlab_finditem (char const*,int*) ;

gitem_t *BG_FindItemByClassName( const char *classname ) {
 gitem_t *it;
 int idx;

 for ( it = bg_itemlist + 1 ; it->classname ; it++ ) {
  if ( !Q_stricmp( it->classname, classname ) )
   return it;
 }

 if ( dmlab_finditem( classname, &idx ) ) {
  BG_UpdateItems( );
  return &bg_itemlist[bg_defaultNumItems + idx];
 }

 return ((void*)0);
}
