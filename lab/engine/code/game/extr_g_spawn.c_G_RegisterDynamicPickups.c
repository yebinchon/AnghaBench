
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BG_FindItemByClassName (char*) ;
 int RegisterItem (int ) ;
 int dmlab_read_dynamic_item_name (int,char*) ;
 int dmlab_register_dynamic_items () ;

void G_RegisterDynamicPickups( void ) {
 char classname[256];
 int i, item_count = dmlab_register_dynamic_items();
 for (i = 0; i < item_count; ++i) {
  dmlab_read_dynamic_item_name( i, classname );
  RegisterItem( BG_FindItemByClassName( classname ) );
 }
}
