
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef float vec_t ;
typedef int vec3_t ;
struct TYPE_13__ {int flags; int * vecs; } ;
typedef TYPE_2__ texinfo_t ;
struct TYPE_14__ {TYPE_4__* faces; } ;
typedef TYPE_3__ node_t ;
struct TYPE_15__ {size_t texinfo; struct TYPE_15__** split; struct TYPE_15__* next; TYPE_1__* w; scalar_t__ merged; } ;
typedef TYPE_4__ face_t ;


 int ClipWindingEpsilon (TYPE_1__*,int ,float,int ,TYPE_1__**,TYPE_1__**) ;
 float DotProduct (int ,int ) ;
 int Error (char*) ;
 void* NewFaceFromFace (TYPE_4__*) ;
 int ON_EPSILON ;
 int SURF_SKY ;
 int SURF_WARP ;
 int VectorCopy (int ,int ) ;
 float VectorNormalize (int ) ;
 int c_subdivide ;
 float subdivide_size ;
 TYPE_2__* texinfo ;

void SubdivideFace (node_t *node, face_t *f)
{
 float mins, maxs;
 vec_t v;
 int axis, i;
 texinfo_t *tex;
 vec3_t temp;
 vec_t dist;
 winding_t *w, *frontw, *backw;

 if (f->merged)
  return;


 tex = &texinfo[f->texinfo];

 if ( tex->flags & (SURF_WARP|SURF_SKY) )
 {
  return;
 }

 for (axis = 0 ; axis < 2 ; axis++)
 {
  while (1)
  {
   mins = 999999;
   maxs = -999999;

   VectorCopy (tex->vecs[axis], temp);
   w = f->w;
   for (i=0 ; i<w->numpoints ; i++)
   {
    v = DotProduct (w->p[i], temp);
    if (v < mins)
     mins = v;
    if (v > maxs)
     maxs = v;
   }




   if (axis == 2)
   {
    if (maxs - mins <= subdivide_size )
     break;
   }
   else if (maxs - mins <= subdivide_size)
    break;


   c_subdivide++;

   v = VectorNormalize (temp);

   dist = (mins + subdivide_size - 16)/v;

   ClipWindingEpsilon (w, temp, dist, ON_EPSILON, &frontw, &backw);
   if (!frontw || !backw)
    Error ("SubdivideFace: didn't split the polygon");

   f->split[0] = NewFaceFromFace (f);
   f->split[0]->w = frontw;
   f->split[0]->next = node->faces;
   node->faces = f->split[0];

   f->split[1] = NewFaceFromFace (f);
   f->split[1]->w = backw;
   f->split[1]->next = node->faces;
   node->faces = f->split[1];

   SubdivideFace (node, f->split[0]);
   SubdivideFace (node, f->split[1]);
   return;
  }
 }
}
