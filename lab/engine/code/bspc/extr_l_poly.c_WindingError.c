
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numpoints; int** p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int BOGUS_RANGE ;
 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int*,int ) ;
 int ON_EPSILON ;
 int VectorLength (int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int*,int*,int ) ;
 int WE_DEGENERATEEDGE ;
 int WE_NONCONVEX ;
 int WE_NONE ;
 int WE_NOTENOUGHPOINTS ;
 int WE_POINTBOGUSRANGE ;
 int WE_POINTOFFPLANE ;
 int WE_SMALLAREA ;
 int WindingArea (TYPE_1__*) ;
 int WindingPlane (TYPE_1__*,int ,int*) ;
 int sprintf (int ,char*,...) ;
 int windingerror ;

int WindingError(winding_t *w)
{
 int i, j;
 vec_t *p1, *p2;
 vec_t d, edgedist;
 vec3_t dir, edgenormal, facenormal;
 vec_t area;
 vec_t facedist;

 if (w->numpoints < 3)
 {
  sprintf(windingerror, "winding %i points", w->numpoints);
  return WE_NOTENOUGHPOINTS;
 }

 area = WindingArea(w);
 if (area < 1)
 {
  sprintf(windingerror, "winding %f area", area);
  return WE_SMALLAREA;
 }

 WindingPlane (w, facenormal, &facedist);

 for (i=0 ; i<w->numpoints ; i++)
 {
  p1 = w->p[i];

  for (j=0 ; j<3 ; j++)
  {
   if (p1[j] > BOGUS_RANGE || p1[j] < -BOGUS_RANGE)
   {
    sprintf(windingerror, "winding point %d BUGUS_RANGE \'%f %f %f\'", j, p1[0], p1[1], p1[2]);
    return WE_POINTBOGUSRANGE;
   }
  }

  j = i+1 == w->numpoints ? 0 : i+1;


  d = DotProduct (p1, facenormal) - facedist;
  if (d < -ON_EPSILON || d > ON_EPSILON)
  {
   sprintf(windingerror, "winding point %d off plane", i);
   return WE_POINTOFFPLANE;
  }


  p2 = w->p[j];
  VectorSubtract (p2, p1, dir);

  if (VectorLength (dir) < ON_EPSILON)
  {
   sprintf(windingerror, "winding degenerate edge %d-%d", i, j);
   return WE_DEGENERATEEDGE;
  }

  CrossProduct (facenormal, dir, edgenormal);
  VectorNormalize (edgenormal);
  edgedist = DotProduct (p1, edgenormal);
  edgedist += ON_EPSILON;


  for (j=0 ; j<w->numpoints ; j++)
  {
   if (j == i)
    continue;
   d = DotProduct (w->p[j], edgenormal);
   if (d > edgedist)
   {
    sprintf(windingerror, "winding non-convex");
    return WE_NONCONVEX;
   }
  }
 }
 return WE_NONE;
}
