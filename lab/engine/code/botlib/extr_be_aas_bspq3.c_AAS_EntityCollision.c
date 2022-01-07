
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_7__ {scalar_t__ fraction; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_8__ {int (* EntityTrace ) (TYPE_1__*,int ,int ,int ,int ,int,int) ;} ;


 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_3__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (TYPE_1__*,int ,int ,int ,int ,int,int) ;

qboolean AAS_EntityCollision(int entnum,
     vec3_t start, vec3_t boxmins, vec3_t boxmaxs, vec3_t end,
        int contentmask, bsp_trace_t *trace)
{
 bsp_trace_t enttrace;

 botimport.EntityTrace(&enttrace, start, boxmins, boxmaxs, end, entnum, contentmask);
 if (enttrace.fraction < trace->fraction)
 {
  Com_Memcpy(trace, &enttrace, sizeof(bsp_trace_t));
  return qtrue;
 }
 return qfalse;
}
