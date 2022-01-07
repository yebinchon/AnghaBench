
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pickup_sound; char* icon; char* precaches; char* sounds; int move_type; int giTag; int giType; int quantity; void* pickup_name; void** world_model; void* classname; } ;
typedef TYPE_1__ gitem_t ;
struct TYPE_6__ {int move_type; int tag; int type; int quantity; int name; int model_name; int classname; } ;
typedef TYPE_2__ dm_item_args_t ;


 void* BG_NewString (int ) ;

void BG_CreateItem( dm_item_args_t* args, gitem_t* item ) {
 item->classname = BG_NewString( args->classname );
 item->pickup_sound = "sound/misc/w_pkup.wav";
 item->world_model[0] = BG_NewString( args->model_name );
 item->icon = "icons/iconh_green";
 item->pickup_name = BG_NewString( args->name );
 item->quantity = args->quantity;
 item->giType = args->type;
 item->giTag = args->tag;
 item->move_type = args->move_type;
 item->precaches = "";
 item->sounds = "";
}
