
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int numAreas; TYPE_1__* areas; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {scalar_t__ floodnum; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_3__ cm ;
 TYPE_2__* cm_noAreas ;
 int qfalse ;
 int qtrue ;

qboolean CM_AreasConnected( int area1, int area2 ) {

 if ( cm_noAreas->integer ) {
  return qtrue;
 }


 if ( area1 < 0 || area2 < 0 ) {
  return qfalse;
 }

 if (area1 >= cm.numAreas || area2 >= cm.numAreas) {
  Com_Error (ERR_DROP, "area >= cm.numAreas");
 }

 if (cm.areas[area1].floodnum == cm.areas[area2].floodnum) {
  return qtrue;
 }
 return qfalse;
}
