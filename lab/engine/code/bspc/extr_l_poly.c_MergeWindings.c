
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; int ** p; } ;
typedef TYPE_1__ winding_t ;
typedef int * vec3_t ;


 TYPE_1__* AllocWinding (int) ;
 int CrossProduct (int *,int *,int *) ;
 float DotProduct (int *,int *) ;
 int Log_Print (char*,...) ;
 int MAX_POINTS_ON_WINDING ;
 int RemoveColinearPoints (TYPE_1__*) ;
 int RemoveEqualPoints (TYPE_1__*,double) ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int VectorCopy (int *,int *) ;
 double VectorLength (int *) ;
 int VectorNormalize (int *) ;
 int VectorSubtract (int *,int *,int *) ;
 int memcpy (int **,int **,int) ;

winding_t *MergeWindings(winding_t *w1, winding_t *w2, vec3_t planenormal)
{
 winding_t *neww;
 float dist;
 int i, j, n, found, insertafter;
 int sides[MAX_POINTS_ON_WINDING+4];
 vec3_t newp[MAX_POINTS_ON_WINDING+4];
 int numpoints;
 vec3_t edgevec, sepnormal, v;

 RemoveEqualPoints(w1, 0.2);
 numpoints = w1->numpoints;
 memcpy(newp, w1->p, w1->numpoints * sizeof(vec3_t));

 for (i = 0; i < w2->numpoints; i++)
 {
  VectorCopy(w2->p[i], v);
  for (j = 0; j < numpoints; j++)
  {
   VectorSubtract(newp[(j+1)%numpoints],
       newp[(j)%numpoints], edgevec);
   CrossProduct(edgevec, planenormal, sepnormal);
   VectorNormalize(sepnormal);
   if (VectorLength(sepnormal) < 0.9)
   {

    for (n = j; n < numpoints-1; n++)
    {
     VectorCopy(newp[n+1], newp[n]);
     sides[n] = sides[n+1];
    }
    numpoints--;
    j--;
    Log_Print("MergeWindings: degenerate edge on winding %f %f %f\n", sepnormal[0],
                    sepnormal[1],
                    sepnormal[2]);
    continue;
   }
   dist = DotProduct(newp[(j)%numpoints], sepnormal);
   if (DotProduct(v, sepnormal) - dist < -0.1) sides[j] = SIDE_BACK;
   else sides[j] = SIDE_FRONT;
  }

  for (j = 0; j < numpoints;)
  {
   if (sides[j] == SIDE_BACK
    && sides[(j+1)%numpoints] == SIDE_BACK)
   {

    for (n = (j+1)%numpoints; n < numpoints-1; n++)
    {
     VectorCopy(newp[n+1], newp[n]);
     sides[n] = sides[n+1];
    }
    numpoints--;
   }
   else
   {
    j++;
   }
  }

  found = 0;
  for (j = 0; j < numpoints; j++)
  {
   if (sides[j] == SIDE_FRONT
    && sides[(j+1)%numpoints] == SIDE_BACK)
   {
    if (found) Log_Print("Warning: MergeWindings: front to back found twice\n");
    found = 1;
   }
  }

  for (j = 0; j < numpoints; j++)
  {
   if (sides[j] == SIDE_FRONT
    && sides[(j+1)%numpoints] == SIDE_BACK)
   {
    insertafter = (j+1)%numpoints;

    for (n = numpoints-1; n > insertafter; n--)
    {
     VectorCopy(newp[n], newp[n+1]);
    }
    numpoints++;
    VectorCopy(v, newp[(insertafter+1)%numpoints]);
    break;
   }
  }
 }
 neww = AllocWinding(numpoints);
 neww->numpoints = numpoints;
 memcpy(neww->p, newp, numpoints * sizeof(vec3_t));
 RemoveColinearPoints(neww);
 return neww;
}
