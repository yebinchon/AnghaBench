
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int registered; } ;
typedef TYPE_1__ itemInfo_t ;


 int BG_InitItemList () ;
 int BG_UpdateItems () ;
 int CG_RegisterItemVisuals (int) ;
 int bg_defaultNumItems ;
 int bg_numItems ;
 TYPE_1__* cg_items ;
 int qfalse ;

void CG_UpdateCustomItems( void ) {
 int i;


 BG_InitItemList();
 BG_UpdateItems();


 for ( i = bg_defaultNumItems ; i < bg_numItems ; i++ ) {
  itemInfo_t *itemInfo = &cg_items[ i ];
  itemInfo->registered = qfalse;

  CG_RegisterItemVisuals( i );
 }
}
