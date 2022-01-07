
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
typedef TYPE_5__ menucommon_s ;
struct TYPE_9__ {int buffer; } ;
struct TYPE_10__ {TYPE_3__ field; } ;
struct TYPE_7__ {int buffer; } ;
struct TYPE_8__ {TYPE_1__ field; } ;
struct TYPE_12__ {TYPE_4__ password_box; TYPE_2__ name_box; } ;




 int QM_ACTIVATED ;
 int UI_ForceMenuOff () ;
 int UI_PopMenu () ;
 TYPE_6__ s_login ;
 int trap_CL_UI_RankUserLogin (int ,int ) ;

__attribute__((used)) static void Login_MenuEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 128:
  trap_CL_UI_RankUserLogin(
   s_login.name_box.field.buffer,
   s_login.password_box.field.buffer );

  UI_ForceMenuOff();
  break;

 case 129:
  UI_PopMenu();
  break;
 }
}
