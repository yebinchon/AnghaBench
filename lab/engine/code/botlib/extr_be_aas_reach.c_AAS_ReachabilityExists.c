
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int areanum; struct TYPE_3__* next; } ;
typedef TYPE_1__ aas_lreachability_t ;


 TYPE_1__** areareachability ;
 int qfalse ;
 int qtrue ;

qboolean AAS_ReachabilityExists(int area1num, int area2num)
{
 aas_lreachability_t *r;

 for (r = areareachability[area1num]; r; r = r->next)
 {
  if (r->areanum == area2num) return qtrue;
 }
 return qfalse;
}
