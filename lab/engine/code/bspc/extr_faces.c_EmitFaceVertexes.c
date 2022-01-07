
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int node_t ;
struct TYPE_7__ {TYPE_1__* w; scalar_t__* split; scalar_t__ merged; } ;
typedef TYPE_2__ face_t ;
struct TYPE_8__ {int point; } ;


 int Error (char*) ;
 int FaceFromSuperverts (int *,TYPE_2__*,int ) ;
 size_t GetVertexnum (int ) ;
 size_t MAX_MAP_VERTS ;
 int VectorCopy (int ,int ) ;
 int c_totalverts ;
 int c_uniqueverts ;
 TYPE_3__* dvertexes ;
 scalar_t__ noweld ;
 int numsuperverts ;
 size_t numvertexes ;
 size_t* superverts ;

void EmitFaceVertexes (node_t *node, face_t *f)
{
 winding_t *w;
 int i;

 if (f->merged || f->split[0] || f->split[1])
  return;

 w = f->w;
 for (i=0 ; i<w->numpoints ; i++)
 {
  if (noweld)
  {
   if (numvertexes == MAX_MAP_VERTS)
    Error ("MAX_MAP_VERTS");
   superverts[i] = numvertexes;
   VectorCopy (w->p[i], dvertexes[numvertexes].point);
   numvertexes++;
   c_uniqueverts++;
   c_totalverts++;
  }
  else
   superverts[i] = GetVertexnum (w->p[i]);
 }
 numsuperverts = w->numpoints;


 FaceFromSuperverts (node, f, 0);
}
