
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_6__ {void* uiStarted; void* soundRegistered; void* soundStarted; void* rendererStarted; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {scalar_t__ integer; } ;


 int CL_InitRenderer () ;
 int CL_InitUI () ;
 int S_BeginRegistration () ;
 int S_Init () ;
 TYPE_3__ cls ;
 TYPE_2__* com_cl_running ;
 TYPE_1__* com_dedicated ;
 void* qtrue ;

void CL_StartHunkUsers( qboolean rendererOnly ) {
 if (!com_cl_running) {
  return;
 }

 if ( !com_cl_running->integer ) {
  return;
 }

 if ( !cls.rendererStarted ) {
  cls.rendererStarted = qtrue;
  CL_InitRenderer();
 }

 if ( rendererOnly ) {
  return;
 }

 if ( !cls.soundStarted ) {
  cls.soundStarted = qtrue;
  S_Init();
 }

 if ( !cls.soundRegistered ) {
  cls.soundRegistered = qtrue;
  S_BeginRegistration();
 }

 if( com_dedicated->integer ) {
  return;
 }

 if ( !cls.uiStarted ) {
  cls.uiStarted = qtrue;
  CL_InitUI();
 }
}
