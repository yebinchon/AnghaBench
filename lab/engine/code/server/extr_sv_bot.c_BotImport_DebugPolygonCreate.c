
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int color; int numPoints; int points; int inuse; } ;
typedef TYPE_1__ bot_debugpoly_t ;


 int Com_Memcpy (int ,int *,int) ;
 int bot_maxdebugpolys ;
 TYPE_1__* debugpolygons ;
 int qtrue ;

int BotImport_DebugPolygonCreate(int color, int numPoints, vec3_t *points) {
 bot_debugpoly_t *poly;
 int i;

 if (!debugpolygons)
  return 0;

 for (i = 1; i < bot_maxdebugpolys; i++) {
  if (!debugpolygons[i].inuse)
   break;
 }
 if (i >= bot_maxdebugpolys)
  return 0;
 poly = &debugpolygons[i];
 poly->inuse = qtrue;
 poly->color = color;
 poly->numPoints = numPoints;
 Com_Memcpy(poly->points, points, numPoints * sizeof(vec3_t));

 return i;
}
