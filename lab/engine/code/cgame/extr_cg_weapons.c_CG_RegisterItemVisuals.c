
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void** models; int icon; scalar_t__ registered; } ;
typedef TYPE_1__ itemInfo_t ;
struct TYPE_7__ {scalar_t__ giType; scalar_t__* world_model; int giTag; int icon; } ;
typedef TYPE_2__ gitem_t ;


 int CG_Error (char*,int,int) ;
 int CG_RegisterWeapon (int ) ;
 scalar_t__ IT_ARMOR ;
 scalar_t__ IT_HEALTH ;
 scalar_t__ IT_HOLDABLE ;
 scalar_t__ IT_POWERUP ;
 scalar_t__ IT_WEAPON ;
 TYPE_2__* bg_itemlist ;
 int bg_numItems ;
 TYPE_1__* cg_items ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ qtrue ;
 void* trap_R_RegisterModel (scalar_t__) ;
 int trap_R_RegisterShader (int ) ;

void CG_RegisterItemVisuals( int itemNum ) {
 itemInfo_t *itemInfo;
 gitem_t *item;

 if ( itemNum < 0 || itemNum >= bg_numItems ) {
  CG_Error( "CG_RegisterItemVisuals: itemNum %d out of range [0-%d]", itemNum, bg_numItems-1 );
 }

 itemInfo = &cg_items[ itemNum ];
 if ( itemInfo->registered ) {
  return;
 }

 item = &bg_itemlist[ itemNum ];

 memset( itemInfo, 0, sizeof( *itemInfo ) );
 itemInfo->registered = qtrue;

 itemInfo->models[0] = trap_R_RegisterModel( item->world_model[0] );

 itemInfo->icon = trap_R_RegisterShader( item->icon );

 if ( item->giType == IT_WEAPON ) {
  CG_RegisterWeapon( item->giTag );
 }




 if ( item->giType == IT_POWERUP || item->giType == IT_HEALTH ||
  item->giType == IT_ARMOR || item->giType == IT_HOLDABLE ) {
  if ( item->world_model[1] ) {
   itemInfo->models[1] = trap_R_RegisterModel( item->world_model[1] );
  }
 }
}
