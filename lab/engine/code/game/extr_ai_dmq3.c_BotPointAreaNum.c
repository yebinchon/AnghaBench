
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 int VectorCopy (int*,int*) ;
 int trap_AAS_PointAreaNum (int*) ;
 int trap_AAS_TraceAreas (int*,int*,int*,int *,int) ;

int BotPointAreaNum(vec3_t origin) {
 int areanum, numareas, areas[10];
 vec3_t end;

 areanum = trap_AAS_PointAreaNum(origin);
 if (areanum) return areanum;
 VectorCopy(origin, end);
 end[2] += 10;
 numareas = trap_AAS_TraceAreas(origin, end, areas, ((void*)0), 10);
 if (numareas > 0) return areas[0];
 return 0;
}
