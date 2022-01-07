
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ port; } ;
typedef TYPE_1__ netadr_t ;


 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 int NET_CompareBaseAdr (TYPE_1__,TYPE_1__) ;
 int qfalse ;
 int qtrue ;

qboolean NET_CompareAdr (netadr_t a, netadr_t b)
{
 if(!NET_CompareBaseAdr(a, b))
  return qfalse;

 if (a.type == NA_IP || a.type == NA_IP6)
 {
  if (a.port == b.port)
   return qtrue;
 }
 else
  return qtrue;

 return qfalse;
}
