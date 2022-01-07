
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int color; int numPoints; int points; int inuse; } ;
typedef TYPE_1__ bot_debugpoly_t ;


 int Com_Memcpy (int ,int *,int) ;
 TYPE_1__* debugpolygons ;
 int qtrue ;

__attribute__((used)) static void BotImport_DebugPolygonShow(int id, int color, int numPoints, vec3_t *points) {
 bot_debugpoly_t *poly;

 if (!debugpolygons) return;
 poly = &debugpolygons[id];
 poly->inuse = qtrue;
 poly->color = color;
 poly->numPoints = numPoints;
 Com_Memcpy(poly->points, points, numPoints * sizeof(vec3_t));
}
