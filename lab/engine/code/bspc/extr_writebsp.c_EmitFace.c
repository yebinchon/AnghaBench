
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int outputnumber; int numpoints; int planenum; int * vertexnums; int texinfo; scalar_t__* split; scalar_t__ merged; } ;
typedef TYPE_1__ face_t ;
struct TYPE_7__ {int planenum; int side; size_t firstedge; int numedges; int texinfo; } ;
typedef TYPE_2__ dface_t ;


 int Error (char*) ;
 int GetEdge2 (int ,int ,TYPE_1__*) ;
 size_t MAX_MAP_FACES ;
 size_t MAX_MAP_SURFEDGES ;
 TYPE_2__* dfaces ;
 int* dsurfedges ;
 size_t numfaces ;
 size_t numsurfedges ;

void EmitFace (face_t *f)
{
 dface_t *df;
 int i;
 int e;

 f->outputnumber = -1;

 if (f->numpoints < 3)
 {
  return;
 }
 if (f->merged || f->split[0] || f->split[1])
 {
  return;
 }


 f->outputnumber = numfaces;

 if (numfaces >= MAX_MAP_FACES)
  Error ("numfaces == MAX_MAP_FACES");
 df = &dfaces[numfaces];
 numfaces++;


 df->planenum = f->planenum & (~1);
 df->side = f->planenum & 1;

 df->firstedge = numsurfedges;
 df->numedges = f->numpoints;
 df->texinfo = f->texinfo;
 for (i=0 ; i<f->numpoints ; i++)
 {

  e = GetEdge2 (f->vertexnums[i], f->vertexnums[(i+1)%f->numpoints], f);
  if (numsurfedges >= MAX_MAP_SURFEDGES)
   Error ("numsurfedges == MAX_MAP_SURFEDGES");
  dsurfedges[numsurfedges] = e;
  numsurfedges++;
 }
}
