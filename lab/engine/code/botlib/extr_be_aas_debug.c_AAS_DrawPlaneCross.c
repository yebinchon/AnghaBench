
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_2__ {int (* DebugLineCreate ) () ;int (* DebugLineShow ) (int,int*,int*,int) ;} ;


 int MAX_DEBUGLINES ;
 int VectorCopy (int*,int*) ;
 TYPE_1__ botimport ;
 int* debuglines ;
 scalar_t__* debuglinevisible ;
 int numdebuglines ;
 scalar_t__ qtrue ;
 int stub1 () ;
 int stub2 (int,int*,int*,int) ;
 int stub3 (int,int*,int*,int) ;

void AAS_DrawPlaneCross(vec3_t point, vec3_t normal, float dist, int type, int color)
{
 int n0, n1, n2, j, line, lines[2];
 vec3_t start1, end1, start2, end2;


 VectorCopy(point, start1);
 VectorCopy(point, end1);
 VectorCopy(point, start2);
 VectorCopy(point, end2);

 n0 = type % 3;
 n1 = (type + 1) % 3;
 n2 = (type + 2) % 3;
 start1[n1] -= 6;
 start1[n2] -= 6;
 end1[n1] += 6;
 end1[n2] += 6;
 start2[n1] += 6;
 start2[n2] -= 6;
 end2[n1] -= 6;
 end2[n2] += 6;

 start1[n0] = (dist - (start1[n1] * normal[n1] +
    start1[n2] * normal[n2])) / normal[n0];
 end1[n0] = (dist - (end1[n1] * normal[n1] +
    end1[n2] * normal[n2])) / normal[n0];
 start2[n0] = (dist - (start2[n1] * normal[n1] +
    start2[n2] * normal[n2])) / normal[n0];
 end2[n0] = (dist - (end2[n1] * normal[n1] +
    end2[n2] * normal[n2])) / normal[n0];

 for (j = 0, line = 0; j < 2 && line < MAX_DEBUGLINES; line++)
 {
  if (!debuglines[line])
  {
   debuglines[line] = botimport.DebugLineCreate();
   lines[j++] = debuglines[line];
   debuglinevisible[line] = qtrue;
   numdebuglines++;
  }
  else if (!debuglinevisible[line])
  {
   lines[j++] = debuglines[line];
   debuglinevisible[line] = qtrue;
  }
 }
 botimport.DebugLineShow(lines[0], start1, end1, color);
 botimport.DebugLineShow(lines[1], start2, end2, color);
}
