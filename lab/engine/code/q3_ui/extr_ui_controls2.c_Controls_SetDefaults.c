
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


struct TYPE_21__ {int defaultbind2; int bind2; int defaultbind1; int bind1; int label; } ;
typedef TYPE_9__ bind_t ;
struct TYPE_20__ {scalar_t__ curvalue; } ;
struct TYPE_19__ {scalar_t__ curvalue; } ;
struct TYPE_18__ {scalar_t__ curvalue; } ;
struct TYPE_17__ {scalar_t__ curvalue; } ;
struct TYPE_16__ {scalar_t__ curvalue; } ;
struct TYPE_15__ {scalar_t__ curvalue; } ;
struct TYPE_14__ {scalar_t__ curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_12__ {TYPE_8__ freelook; TYPE_7__ joythreshold; TYPE_6__ joyenable; TYPE_5__ sensitivity; TYPE_4__ autoswitch; TYPE_3__ alwaysrun; TYPE_2__ smoothmouse; TYPE_1__ invertmouse; } ;


 scalar_t__ Controls_GetCvarDefault (char*) ;
 TYPE_9__* g_bindings ;
 TYPE_10__ s_controls ;

__attribute__((used)) static void Controls_SetDefaults( void )
{
 int i;
 bind_t* bindptr;


 bindptr = g_bindings;


 for (i=0; ;i++,bindptr++)
 {
  if (!bindptr->label)
   break;

  bindptr->bind1 = bindptr->defaultbind1;
  bindptr->bind2 = bindptr->defaultbind2;
 }

 s_controls.invertmouse.curvalue = Controls_GetCvarDefault( "m_pitch" ) < 0;
 s_controls.smoothmouse.curvalue = Controls_GetCvarDefault( "m_filter" );
 s_controls.alwaysrun.curvalue = Controls_GetCvarDefault( "cl_run" );
 s_controls.autoswitch.curvalue = Controls_GetCvarDefault( "cg_autoswitch" );
 s_controls.sensitivity.curvalue = Controls_GetCvarDefault( "sensitivity" );
 s_controls.joyenable.curvalue = Controls_GetCvarDefault( "in_joystick" );
 s_controls.joythreshold.curvalue = Controls_GetCvarDefault( "joy_threshold" );
 s_controls.freelook.curvalue = Controls_GetCvarDefault( "cl_freelook" );
}
