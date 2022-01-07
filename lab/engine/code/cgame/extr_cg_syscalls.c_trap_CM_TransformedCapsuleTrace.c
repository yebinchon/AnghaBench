
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int trace_t ;
typedef int clipHandle_t ;


 int CG_CM_TRANSFORMEDCAPSULETRACE ;
 int syscall (int ,int *,int const,int const,int const,int const,int ,int,int const,int const) ;

void trap_CM_TransformedCapsuleTrace( trace_t *results, const vec3_t start, const vec3_t end,
        const vec3_t mins, const vec3_t maxs,
        clipHandle_t model, int brushmask,
        const vec3_t origin, const vec3_t angles ) {
 syscall( CG_CM_TRANSFORMEDCAPSULETRACE, results, start, end, mins, maxs, model, brushmask, origin, angles );
}
