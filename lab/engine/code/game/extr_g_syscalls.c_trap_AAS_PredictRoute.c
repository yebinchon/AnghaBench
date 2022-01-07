
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_AAS_PREDICT_ROUTE ;
 int syscall (int ,void*,int,int ,int,int,int,int,int,int,int,int) ;

int trap_AAS_PredictRoute(void *route, int areanum, vec3_t origin,
       int goalareanum, int travelflags, int maxareas, int maxtime,
       int stopevent, int stopcontents, int stoptfl, int stopareanum) {
 return syscall( BOTLIB_AAS_PREDICT_ROUTE, route, areanum, origin, goalareanum, travelflags, maxareas, maxtime, stopevent, stopcontents, stoptfl, stopareanum );
}
