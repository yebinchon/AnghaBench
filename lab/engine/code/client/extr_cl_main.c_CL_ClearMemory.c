
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int integer; } ;


 int CL_ShutdownAll (int ) ;
 int CM_ClearMap () ;
 int Hunk_Clear () ;
 int Hunk_ClearToMark () ;
 TYPE_1__* com_sv_running ;

void CL_ClearMemory(qboolean shutdownRef)
{

 CL_ShutdownAll(shutdownRef);


 if ( !com_sv_running || !com_sv_running->integer ) {

  Hunk_Clear();

  CM_ClearMap();
 }
 else {

  Hunk_ClearToMark();
 }
}
