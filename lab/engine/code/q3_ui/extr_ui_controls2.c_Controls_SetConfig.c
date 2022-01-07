
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_21__ {int bind1; int bind2; int command; int label; } ;
typedef TYPE_9__ bind_t ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {scalar_t__ curvalue; } ;
struct TYPE_12__ {TYPE_8__ freelook; TYPE_7__ joythreshold; TYPE_6__ joyenable; TYPE_5__ sensitivity; TYPE_4__ autoswitch; TYPE_3__ alwaysrun; TYPE_2__ smoothmouse; TYPE_1__ invertmouse; } ;


 int EXEC_APPEND ;
 int fabs (int ) ;
 TYPE_9__* g_bindings ;
 TYPE_10__ s_controls ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_SetValue (char*,int ) ;
 int trap_Cvar_VariableValue (char*) ;
 int trap_Key_SetBinding (int,int ) ;

__attribute__((used)) static void Controls_SetConfig( void )
{
 int i;
 bind_t* bindptr;


 bindptr = g_bindings;


 for (i=0; ;i++,bindptr++)
 {
  if (!bindptr->label)
   break;

  if (bindptr->bind1 != -1)
  {
   trap_Key_SetBinding( bindptr->bind1, bindptr->command );

   if (bindptr->bind2 != -1)
    trap_Key_SetBinding( bindptr->bind2, bindptr->command );
  }
 }

 if ( s_controls.invertmouse.curvalue )
  trap_Cvar_SetValue( "m_pitch", -fabs( trap_Cvar_VariableValue( "m_pitch" ) ) );
 else
  trap_Cvar_SetValue( "m_pitch", fabs( trap_Cvar_VariableValue( "m_pitch" ) ) );

 trap_Cvar_SetValue( "m_filter", s_controls.smoothmouse.curvalue );
 trap_Cvar_SetValue( "cl_run", s_controls.alwaysrun.curvalue );
 trap_Cvar_SetValue( "cg_autoswitch", s_controls.autoswitch.curvalue );
 trap_Cvar_SetValue( "sensitivity", s_controls.sensitivity.curvalue );
 trap_Cvar_SetValue( "in_joystick", s_controls.joyenable.curvalue );
 trap_Cvar_SetValue( "joy_threshold", s_controls.joythreshold.curvalue );
 trap_Cvar_SetValue( "cl_freelook", s_controls.freelook.curvalue );
 trap_Cmd_ExecuteText( EXEC_APPEND, "in_restart\n" );
}
