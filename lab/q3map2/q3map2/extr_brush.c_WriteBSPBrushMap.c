
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef TYPE_2__ side_t ;
struct TYPE_10__ {int numsides; TYPE_2__* sides; struct TYPE_10__* next; } ;
typedef TYPE_3__ brush_t ;
struct TYPE_11__ {int dist; int normal; } ;
typedef int FILE ;


 TYPE_1__* BaseWindingForPlane (int ,int ) ;
 int Error (char*,char*) ;
 int FreeWinding (TYPE_1__*) ;
 int Sys_Printf (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_4__* mapplanes ;

void WriteBSPBrushMap( char *name, brush_t *list ){
 FILE *f;
 side_t *s;
 int i;
 winding_t *w;



 Sys_Printf( "Writing %s\n", name );


 f = fopen( name, "wb" );
 if ( f == ((void*)0) ) {
  Error( "Can't write %s\b", name );
 }

 fprintf( f, "{\n\"classname\" \"worldspawn\"\n" );

 for ( ; list ; list = list->next )
 {
  fprintf( f, "{\n" );
  for ( i = 0,s = list->sides ; i < list->numsides ; i++,s++ )
  {


   w = BaseWindingForPlane( mapplanes[s->planenum].normal, mapplanes[s->planenum].dist );

   fprintf( f,"( %i %i %i ) ", (int)w->p[0][0], (int)w->p[0][1], (int)w->p[0][2] );
   fprintf( f,"( %i %i %i ) ", (int)w->p[1][0], (int)w->p[1][1], (int)w->p[1][2] );
   fprintf( f,"( %i %i %i ) ", (int)w->p[2][0], (int)w->p[2][1], (int)w->p[2][2] );

   fprintf( f, "notexture 0 0 0 1 1\n" );
   FreeWinding( w );
  }
  fprintf( f, "}\n" );
 }
 fprintf( f, "}\n" );

 fclose( f );

}
