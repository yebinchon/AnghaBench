
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int fraction; } ;
typedef TYPE_1__ bsp_trace_t ;


 TYPE_1__ AAS_Trace (int ,int *,int *,int ,int,int) ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 int qfalse ;
 int qtrue ;

int BotVisible(int ent, vec3_t eye, vec3_t target)
{
 bsp_trace_t trace;

 trace = AAS_Trace(eye, ((void*)0), ((void*)0), target, ent, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
 if (trace.fraction >= 1) return qtrue;
 return qfalse;
}
