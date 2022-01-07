
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {int id; } ;
typedef TYPE_9__ menucommon_s ;
struct TYPE_18__ {int buffer; } ;
struct TYPE_19__ {TYPE_7__ field; } ;
struct TYPE_16__ {int buffer; } ;
struct TYPE_17__ {TYPE_5__ field; } ;
struct TYPE_14__ {int buffer; } ;
struct TYPE_15__ {TYPE_3__ field; } ;
struct TYPE_12__ {int buffer; } ;
struct TYPE_13__ {TYPE_1__ field; } ;
struct TYPE_11__ {TYPE_8__ email_box; TYPE_6__ password_box; TYPE_4__ name_box; TYPE_2__ again_box; } ;




 int QM_ACTIVATED ;
 int UI_ForceMenuOff () ;
 int UI_PopMenu () ;
 TYPE_10__ s_signup ;
 int strcmp (int ,int ) ;
 int trap_CL_UI_RankUserCreate (int ,int ,int ) ;

__attribute__((used)) static void Signup_MenuEvent( void* ptr, int event ) {


 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 128:
  if( strcmp(s_signup.password_box.field.buffer,
   s_signup.again_box.field.buffer) != 0 )
  {

   break;
  }
  trap_CL_UI_RankUserCreate(
   s_signup.name_box.field.buffer,
   s_signup.password_box.field.buffer,
   s_signup.email_box.field.buffer );

  UI_ForceMenuOff();
  break;

 case 129:
  UI_PopMenu();
  break;
 }
}
