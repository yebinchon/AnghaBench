
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ floodvalid; int floodnum; } ;
typedef TYPE_1__ cArea_t ;
struct TYPE_4__ {scalar_t__ floodvalid; int* areaPortals; int numAreas; TYPE_1__* areas; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_2__ cm ;

void CM_FloodArea_r( int areaNum, int floodnum) {
 int i;
 cArea_t *area;
 int *con;

 area = &cm.areas[ areaNum ];

 if ( area->floodvalid == cm.floodvalid ) {
  if (area->floodnum == floodnum)
   return;
  Com_Error (ERR_DROP, "FloodArea_r: reflooded");
 }

 area->floodnum = floodnum;
 area->floodvalid = cm.floodvalid;
 con = cm.areaPortals + areaNum * cm.numAreas;
 for ( i=0 ; i < cm.numAreas ; i++ ) {
  if ( con[i] > 0 ) {
   CM_FloodArea_r( i, floodnum );
  }
 }
}
