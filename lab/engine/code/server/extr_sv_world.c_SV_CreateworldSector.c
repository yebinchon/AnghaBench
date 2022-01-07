
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int axis; double dist; struct TYPE_4__** children; } ;
typedef TYPE_1__ worldSector_t ;
typedef scalar_t__* vec3_t ;


 int AREA_DEPTH ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 size_t sv_numworldSectors ;
 TYPE_1__* sv_worldSectors ;

__attribute__((used)) static worldSector_t *SV_CreateworldSector( int depth, vec3_t mins, vec3_t maxs ) {
 worldSector_t *anode;
 vec3_t size;
 vec3_t mins1, maxs1, mins2, maxs2;

 anode = &sv_worldSectors[sv_numworldSectors];
 sv_numworldSectors++;

 if (depth == AREA_DEPTH) {
  anode->axis = -1;
  anode->children[0] = anode->children[1] = ((void*)0);
  return anode;
 }

 VectorSubtract (maxs, mins, size);
 if (size[0] > size[1]) {
  anode->axis = 0;
 } else {
  anode->axis = 1;
 }

 anode->dist = 0.5 * (maxs[anode->axis] + mins[anode->axis]);
 VectorCopy (mins, mins1);
 VectorCopy (mins, mins2);
 VectorCopy (maxs, maxs1);
 VectorCopy (maxs, maxs2);

 maxs1[anode->axis] = mins2[anode->axis] = anode->dist;

 anode->children[0] = SV_CreateworldSector (depth+1, mins2, maxs2);
 anode->children[1] = SV_CreateworldSector (depth+1, mins1, maxs1);

 return anode;
}
