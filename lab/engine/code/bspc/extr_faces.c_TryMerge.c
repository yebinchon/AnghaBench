
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec3_t ;
struct TYPE_7__ {scalar_t__ texinfo; scalar_t__ planenum; scalar_t__ contents; struct TYPE_7__* merged; int * w; } ;
typedef TYPE_1__ face_t ;


 TYPE_1__* NewFaceFromFace (TYPE_1__*) ;
 int * TryMergeWinding (int *,int *,int ) ;
 int c_merge ;

face_t *TryMerge (face_t *f1, face_t *f2, vec3_t planenormal)
{
 face_t *newf;
 winding_t *nw;

 if (!f1->w || !f2->w)
  return ((void*)0);
 if (f1->texinfo != f2->texinfo)
  return ((void*)0);
 if (f1->planenum != f2->planenum)
  return ((void*)0);
 if (f1->contents != f2->contents)
  return ((void*)0);


 nw = TryMergeWinding (f1->w, f2->w, planenormal);
 if (!nw)
  return ((void*)0);

 c_merge++;
 newf = NewFaceFromFace (f1);
 newf->w = nw;

 f1->merged = newf;
 f2->merged = newf;

 return newf;
}
