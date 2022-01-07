
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * w; int ** split; int * merged; } ;
typedef TYPE_1__ face_t ;


 TYPE_1__* AllocFace () ;

face_t *NewFaceFromFace (face_t *f)
{
 face_t *newf;

 newf = AllocFace ();
 *newf = *f;
 newf->merged = ((void*)0);
 newf->split[0] = newf->split[1] = ((void*)0);
 newf->w = ((void*)0);
 return newf;
}
