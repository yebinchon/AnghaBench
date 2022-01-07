
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_5__ {int planenum; int * winding; int * backarea; int * frontarea; } ;
typedef TYPE_1__ tmp_face_t ;
typedef int tmp_area_t ;


 int AAS_AddFaceSideToArea (TYPE_1__*,int,int *) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,int *) ;
 int FreeWinding (int *) ;
 int * ReverseWinding (int *) ;

void AAS_FlipFace(tmp_face_t *face)
{
 tmp_area_t *frontarea, *backarea;
 winding_t *w;

 frontarea = face->frontarea;
 backarea = face->backarea;

 if (!frontarea || !backarea) return;

 w = face->winding;
 face->winding = ReverseWinding(w);
 FreeWinding(w);

 face->planenum ^= 1;

 AAS_RemoveFaceFromArea(face, frontarea);
 AAS_RemoveFaceFromArea(face, backarea);
 AAS_AddFaceSideToArea(face, 1, frontarea);
 AAS_AddFaceSideToArea(face, 0, backarea);
}
