
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int normal; int dist; } ;
typedef TYPE_2__ th_plane_t ;
struct TYPE_8__ {TYPE_1__* vertexes; } ;
struct TYPE_6__ {int v; } ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_3__ thworld ;

void TH_CreateTrianglePlanes(int verts[3], th_plane_t *triplane, th_plane_t *planes)
{
 int i;
 vec3_t dir;

 for (i = 0; i < 3; i++)
 {
  VectorSubtract(thworld.vertexes[verts[(i+1)%3]].v, thworld.vertexes[verts[i]].v, dir);
  CrossProduct(dir, triplane->normal, planes[i].normal);
  VectorNormalize(planes[i].normal);
  planes[i].dist = DotProduct(thworld.vertexes[verts[i]].v, planes[i].normal);
 }
}
