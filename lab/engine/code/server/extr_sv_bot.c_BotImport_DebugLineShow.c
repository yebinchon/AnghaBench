
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ vec3_t ;


 int BotImport_DebugPolygonShow (int,int,int,TYPE_1__*) ;
 int CrossProduct (TYPE_1__,TYPE_1__,TYPE_1__) ;
 float DotProduct (TYPE_1__,TYPE_1__) ;
 int VectorCopy (TYPE_1__,TYPE_1__) ;
 int VectorMA (TYPE_1__,int,TYPE_1__,TYPE_1__) ;
 int VectorNormalize (TYPE_1__) ;
 int VectorSet (TYPE_1__,int,int ,int ) ;
 int VectorSubtract (TYPE_1__,TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void BotImport_DebugLineShow(int line, vec3_t start, vec3_t end, int color) {
 vec3_t points[4], dir, cross, up = {0, 0, 1};
 float dot;

 VectorCopy(start, points[0]);
 VectorCopy(start, points[1]);

 VectorCopy(end, points[2]);

 VectorCopy(end, points[3]);


 VectorSubtract(end, start, dir);
 VectorNormalize(dir);
 dot = DotProduct(dir, up);
 if (dot > 0.99 || dot < -0.99) VectorSet(cross, 1, 0, 0);
 else CrossProduct(dir, up, cross);

 VectorNormalize(cross);

 VectorMA(points[0], 2, cross, points[0]);
 VectorMA(points[1], -2, cross, points[1]);
 VectorMA(points[2], -2, cross, points[2]);
 VectorMA(points[3], 2, cross, points[3]);

 BotImport_DebugPolygonShow(line, color, 4, points);
}
