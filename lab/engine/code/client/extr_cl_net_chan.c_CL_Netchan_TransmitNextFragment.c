
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ unsentFragments; } ;
typedef TYPE_1__ netchan_t ;


 int Netchan_TransmitNextFragment (TYPE_1__*) ;
 int qfalse ;
 int qtrue ;

qboolean CL_Netchan_TransmitNextFragment(netchan_t *chan)
{
 if(chan->unsentFragments)
 {
  Netchan_TransmitNextFragment(chan);
  return qtrue;
 }

 return qfalse;
}
