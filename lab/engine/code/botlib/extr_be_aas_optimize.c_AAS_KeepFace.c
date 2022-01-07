
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int faceflags; } ;
typedef TYPE_1__ aas_face_t ;


 int FACE_LADDER ;

int AAS_KeepFace(aas_face_t *face)
{
 if (!(face->faceflags & FACE_LADDER)) return 0;
 else return 1;
}
