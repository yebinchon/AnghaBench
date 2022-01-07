
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_2__ {int (* DebugLineCreate ) () ;int (* DebugLineShow ) (int,float*,float*,int) ;} ;


 int AAS_DebugLine (float*,float*,int) ;
 int VectorCopy (float*,float*) ;
 TYPE_1__ botimport ;
 int stub1 () ;
 int stub2 (int,float*,float*,int) ;

void AAS_DrawPermanentCross(vec3_t origin, float size, int color)
{
 int i, debugline;
 vec3_t start, end;

 for (i = 0; i < 3; i++)
 {
  VectorCopy(origin, start);
  start[i] += size;
  VectorCopy(origin, end);
  end[i] -= size;
  AAS_DebugLine(start, end, color);
  debugline = botimport.DebugLineCreate();
  botimport.DebugLineShow(debugline, start, end, color);
 }
}
