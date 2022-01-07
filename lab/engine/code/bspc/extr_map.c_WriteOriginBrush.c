
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
typedef int* vec3_t ;
typedef int qboolean ;
typedef int FILE ;


 TYPE_1__* BaseWindingForPlane (int*,float) ;
 int FreeWinding (TYPE_1__*) ;
 scalar_t__ MAPTYPE_HALFLIFE ;
 scalar_t__ MAPTYPE_QUAKE2 ;
 scalar_t__ MAPTYPE_SIN ;
 int VectorClear (int*) ;
 int c_writtenbrushes ;
 scalar_t__ fprintf (int *,char*,...) ;
 scalar_t__ loadedmaptype ;

qboolean WriteOriginBrush(FILE *fp, vec3_t origin)
{
 vec3_t normal;
 float dist;
 int i, s;
 winding_t *w;

 if (fprintf(fp, " {\n") < 0) return 0;

 for (i = 0; i < 3; i++)
 {
  for (s = -1; s <= 1; s += 2)
  {

   VectorClear(normal);
   normal[i] = s;
   dist = origin[i] * s + 16;

   w = BaseWindingForPlane(normal, dist);

   if (fprintf(fp,"  ( %5i %5i %5i ) ", (int)w->p[0][0], (int)w->p[0][1], (int)w->p[0][2]) < 0) return 0;
   if (fprintf(fp,"( %5i %5i %5i ) ", (int)w->p[1][0], (int)w->p[1][1], (int)w->p[1][2]) < 0) return 0;
   if (fprintf(fp,"( %5i %5i %5i ) ", (int)w->p[2][0], (int)w->p[2][1], (int)w->p[2][2]) < 0) return 0;

   FreeWinding(w);



   if (loadedmaptype == MAPTYPE_SIN)
   {
    if (fprintf(fp, "generic/misc/origin 0 0 0 1 1") < 0) return 0;
   }
   else if (loadedmaptype == MAPTYPE_HALFLIFE)
   {
    if (fprintf(fp, "origin 0 0 0 1 1") < 0) return 0;
   }
   else
   {
    if (fprintf(fp, "e1u1/origin 0 0 0 1 1") < 0) return 0;
   }

   if (loadedmaptype == MAPTYPE_QUAKE2)
   {

   }
   if (fprintf(fp, "\n") < 0) return 0;
  }
 }
 if (fprintf(fp, " }\n") < 0) return 0;
 c_writtenbrushes++;
 return 1;
}
