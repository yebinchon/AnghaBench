
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_4__ {int type; float dist; int normal; } ;
typedef TYPE_1__ cplane_t ;
struct TYPE_5__ {int* children; TYPE_1__* plane; } ;
typedef TYPE_2__ cNode_t ;
struct TYPE_6__ {TYPE_2__* nodes; } ;


 float DotProduct (int ,float* const) ;
 int c_pointcontents ;
 TYPE_3__ cm ;

int CM_PointLeafnum_r( const vec3_t p, int num ) {
 float d;
 cNode_t *node;
 cplane_t *plane;

 while (num >= 0)
 {
  node = cm.nodes + num;
  plane = node->plane;

  if (plane->type < 3)
   d = p[plane->type] - plane->dist;
  else
   d = DotProduct (plane->normal, p) - plane->dist;
  if (d < 0)
   num = node->children[1];
  else
   num = node->children[0];
 }

 c_pointcontents++;

 return -1 - num;
}
