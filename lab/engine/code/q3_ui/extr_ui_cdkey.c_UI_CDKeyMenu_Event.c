
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
typedef TYPE_3__ menucommon_s ;
struct TYPE_5__ {int * buffer; } ;
struct TYPE_6__ {TYPE_1__ field; } ;
struct TYPE_8__ {TYPE_2__ cdkey; } ;




 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_4__ cdkeyMenuInfo ;
 int trap_SetCDKey (int *) ;

__attribute__((used)) static void UI_CDKeyMenu_Event( void *ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 129:
  if( cdkeyMenuInfo.cdkey.field.buffer[0] ) {
   trap_SetCDKey( cdkeyMenuInfo.cdkey.field.buffer );
  }
  UI_PopMenu();
  break;

 case 128:
  UI_PopMenu();
  break;
 }
}
