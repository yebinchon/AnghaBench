
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


struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {void* modified; void* integer; } ;
struct TYPE_7__ {int (* Update ) () ;} ;


 TYPE_6__* com_minimized ;
 TYPE_5__* com_unfocused ;
 void* qfalse ;
 void* qtrue ;
 TYPE_4__* s_muteWhenMinimized ;
 TYPE_3__* s_muteWhenUnfocused ;
 TYPE_2__* s_muted ;
 TYPE_1__ si ;
 int stub1 () ;

void S_Update( void )
{
 if(s_muted->integer)
 {
  if(!(s_muteWhenMinimized->integer && com_minimized->integer) &&
     !(s_muteWhenUnfocused->integer && com_unfocused->integer))
  {
   s_muted->integer = qfalse;
   s_muted->modified = qtrue;
  }
 }
 else
 {
  if((s_muteWhenMinimized->integer && com_minimized->integer) ||
     (s_muteWhenUnfocused->integer && com_unfocused->integer))
  {
   s_muted->integer = qtrue;
   s_muted->modified = qtrue;
  }
 }

 if( si.Update ) {
  si.Update( );
 }
}
