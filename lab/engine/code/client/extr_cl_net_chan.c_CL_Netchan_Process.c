
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ compat; } ;
typedef TYPE_1__ netchan_t ;
typedef int msg_t ;


 int CL_Netchan_Decode (int *) ;
 int Netchan_Process (TYPE_1__*,int *) ;
 int qfalse ;
 int qtrue ;

qboolean CL_Netchan_Process( netchan_t *chan, msg_t *msg ) {
 int ret;

 ret = Netchan_Process( chan, msg );
 if (!ret)
  return qfalse;






 return qtrue;
}
