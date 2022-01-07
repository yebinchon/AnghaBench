
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef int clipHandle_t ;


 int CM_InlineModel (int) ;
 int CM_ModelBounds (int ,float*,float*) ;
 float RadiusFromBounds (float*,float*) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;

__attribute__((used)) static void BotImport_BSPModelMinsMaxsOrigin(int modelnum, vec3_t angles, vec3_t outmins, vec3_t outmaxs, vec3_t origin) {
 clipHandle_t h;
 vec3_t mins, maxs;
 float max;
 int i;

 h = CM_InlineModel(modelnum);
 CM_ModelBounds(h, mins, maxs);

 if ((angles[0] || angles[1] || angles[2])) {


  max = RadiusFromBounds(mins, maxs);
  for (i = 0; i < 3; i++) {
   mins[i] = -max;
   maxs[i] = max;
  }
 }
 if (outmins) VectorCopy(mins, outmins);
 if (outmaxs) VectorCopy(maxs, outmaxs);
 if (origin) VectorClear(origin);
}
