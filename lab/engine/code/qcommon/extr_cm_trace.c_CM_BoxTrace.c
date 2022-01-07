
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int trace_t ;
typedef int clipHandle_t ;


 int CM_Trace (int *,int const,int const,int ,int ,int ,int ,int,int,int *) ;
 int vec3_origin ;

void CM_BoxTrace( trace_t *results, const vec3_t start, const vec3_t end,
        vec3_t mins, vec3_t maxs,
        clipHandle_t model, int brushmask, int capsule ) {
 CM_Trace( results, start, end, mins, maxs, model, vec3_origin, brushmask, capsule, ((void*)0) );
}
