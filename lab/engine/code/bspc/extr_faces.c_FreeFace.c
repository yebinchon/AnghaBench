
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w; } ;
typedef TYPE_1__ face_t ;


 int FreeMemory (TYPE_1__*) ;
 int FreeWinding (scalar_t__) ;
 int c_faces ;

void FreeFace (face_t *f)
{
 if (f->w)
  FreeWinding (f->w);
 FreeMemory(f);
 c_faces--;
}
