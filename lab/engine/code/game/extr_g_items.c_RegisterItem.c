
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gitem_t ;


 int G_Error (char*) ;
 int * bg_itemlist ;
 int * itemRegistered ;
 int qtrue ;

void RegisterItem( gitem_t *item ) {
 if ( !item ) {
  G_Error( "RegisterItem: NULL" );
 }
 itemRegistered[ item - bg_itemlist ] = qtrue;
}
