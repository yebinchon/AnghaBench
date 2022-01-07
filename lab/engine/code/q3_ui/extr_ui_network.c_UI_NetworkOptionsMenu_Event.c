
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_4__ {int curvalue; } ;
struct TYPE_6__ {TYPE_1__ rate; } ;
 int QM_ACTIVATED ;
 int UI_DisplayOptionsMenu () ;
 int UI_GraphicsOptionsMenu () ;
 int UI_PopMenu () ;
 int UI_SoundOptionsMenu () ;
 TYPE_3__ networkOptionsInfo ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void UI_NetworkOptionsMenu_Event( void* ptr, int event ) {
 if( event != QM_ACTIVATED ) {
  return;
 }

 switch( ((menucommon_s*)ptr)->id ) {
 case 131:
  UI_PopMenu();
  UI_GraphicsOptionsMenu();
  break;

 case 132:
  UI_PopMenu();
  UI_DisplayOptionsMenu();
  break;

 case 128:
  UI_PopMenu();
  UI_SoundOptionsMenu();
  break;

 case 130:
  break;

 case 129:
  if( networkOptionsInfo.rate.curvalue == 0 ) {
   trap_Cvar_SetValue( "rate", 2500 );
  }
  else if( networkOptionsInfo.rate.curvalue == 1 ) {
   trap_Cvar_SetValue( "rate", 3000 );
  }
  else if( networkOptionsInfo.rate.curvalue == 2 ) {
   trap_Cvar_SetValue( "rate", 4000 );
  }
  else if( networkOptionsInfo.rate.curvalue == 3 ) {
   trap_Cvar_SetValue( "rate", 5000 );
  }
  else if( networkOptionsInfo.rate.curvalue == 4 ) {
   trap_Cvar_SetValue( "rate", 25000 );
  }
  break;

 case 133:
  UI_PopMenu();
  break;
 }
}
