
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int compileFlags; int planenum; int * visibleHull; } ;
typedef TYPE_1__ side_t ;
struct TYPE_8__ {int planenum; int compileFlags; struct TYPE_8__* next; scalar_t__ priority; int w; } ;
typedef TYPE_2__ face_t ;
struct TYPE_9__ {int numsides; TYPE_1__* sides; scalar_t__ detail; struct TYPE_9__* next; } ;
typedef TYPE_3__ brush_t ;


 scalar_t__ ANTIPORTAL_PRIORITY ;
 scalar_t__ AREAPORTAL_PRIORITY ;
 TYPE_2__* AllocBspFace () ;
 int C_ANTIPORTAL ;
 int C_AREAPORTAL ;
 int C_HINT ;
 int C_SKIP ;
 int CopyWinding (int *) ;
 scalar_t__ HINT_PRIORITY ;

face_t *MakeVisibleBSPFaceList( brush_t *list ){
 brush_t *b;
 int i;
 side_t *s;
 winding_t *w;
 face_t *f, *flist;


 flist = ((void*)0);
 for ( b = list; b != ((void*)0); b = b->next )
 {
  if ( b->detail ) {
   continue;
  }

  for ( i = 0; i < b->numsides; i++ )
  {

   s = &b->sides[ i ];
   w = s->visibleHull;
   if ( w == ((void*)0) ) {
    continue;
   }


   if ( s->compileFlags & C_SKIP ) {
    continue;
   }


   f = AllocBspFace();
   f->w = CopyWinding( w );
   f->planenum = s->planenum & ~1;
   f->compileFlags = s->compileFlags;


   f->priority = 0;
   if ( f->compileFlags & C_HINT ) {
    f->priority += HINT_PRIORITY;
   }
   if ( f->compileFlags & C_ANTIPORTAL ) {
    f->priority += ANTIPORTAL_PRIORITY;
   }
   if ( f->compileFlags & C_AREAPORTAL ) {
    f->priority += AREAPORTAL_PRIORITY;
   }


   f->next = flist;
   flist = f;
  }
 }

 return flist;
}
