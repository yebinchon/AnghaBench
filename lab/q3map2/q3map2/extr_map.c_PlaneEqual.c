
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {scalar_t__ dist; scalar_t__* normal; } ;
typedef TYPE_1__ plane_t ;


 float distanceEpsilon ;
 float fabs (scalar_t__) ;
 float normalEpsilon ;
 int qfalse ;
 int qtrue ;

qboolean PlaneEqual( plane_t *p, vec3_t normal, vec_t dist ){
 float ne, de;



 ne = normalEpsilon;
 de = distanceEpsilon;






 if ( ( p->dist == dist || fabs( p->dist - dist ) < de ) &&
   ( p->normal[0] == normal[0] || fabs( p->normal[0] - normal[0] ) < ne ) &&
   ( p->normal[1] == normal[1] || fabs( p->normal[1] - normal[1] ) < ne ) &&
   ( p->normal[2] == normal[2] || fabs( p->normal[2] - normal[2] ) < ne ) ) {
  return qtrue;
 }


 return qfalse;
}
