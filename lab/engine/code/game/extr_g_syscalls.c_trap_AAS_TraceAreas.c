
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_TRACE_AREAS ;
 int syscall (int ,int ,int ,int*,int *,int) ;

int trap_AAS_TraceAreas(vec3_t start, vec3_t end, int *areas, vec3_t *points, int maxareas) {
 return syscall( BOTLIB_AAS_TRACE_AREAS, start, end, areas, points, maxareas );
}
