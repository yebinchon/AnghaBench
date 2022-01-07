
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * classname; } ;
typedef TYPE_1__ gitem_t ;
struct TYPE_7__ {int move_type; int tag; int type; int quantity; int model_name; int classname; int name; } ;
typedef TYPE_2__ dm_item_args_t ;


 int BG_CreateItem (TYPE_2__*,TYPE_1__*) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_ITEMS ;
 int bg_defaultNumItems ;
 TYPE_1__* bg_itemlist ;
 int bg_numItems ;
 scalar_t__ dmlab_item (int,int ,int,int ,int,int ,int,int *,int *,int *,int *) ;
 int dmlab_itemcount () ;

void BG_UpdateItems( void ) {
 int i;
 dm_item_args_t dm_args;
 gitem_t* item;



 int num_custom_items = bg_numItems - bg_defaultNumItems;

 if ( num_custom_items != dmlab_itemcount( ) ) {
  for ( i = num_custom_items; i < dmlab_itemcount( ); ++i ) {



   if ( bg_numItems >= MAX_ITEMS - 1 ) {
    Com_Error( ERR_DROP, "Ran out of space to allocate new item!" );
    break;
   }

   if (dmlab_item(
     i, dm_args.name, sizeof(dm_args.name),
     dm_args.classname, sizeof(dm_args.classname),
     dm_args.model_name, sizeof(dm_args.model_name),
     &dm_args.quantity, &dm_args.type, &dm_args.tag,
     &dm_args.move_type
    )) {
    item = &bg_itemlist[bg_numItems++];
    BG_CreateItem( &dm_args, item );
   }
  }

  bg_itemlist[bg_numItems + 1].classname = ((void*)0);
 }
}
