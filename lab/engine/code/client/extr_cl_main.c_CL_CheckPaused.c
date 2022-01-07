
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ modified; scalar_t__ integer; } ;


 TYPE_1__* cl_paused ;
 int qfalse ;
 int qtrue ;

qboolean CL_CheckPaused(void)
{



 if(cl_paused->integer || cl_paused->modified)
  return qtrue;

 return qfalse;
}
