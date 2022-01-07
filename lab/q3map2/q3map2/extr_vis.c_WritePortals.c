
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hint; TYPE_2__* winding; scalar_t__ removed; } ;
typedef TYPE_1__ vportal_t ;
struct TYPE_5__ {int numpoints; int ** points; } ;
typedef TYPE_2__ fixedWinding_t ;
typedef int FILE ;


 int Error (char*,char*) ;
 char* PORTALFILE ;
 int WriteFloat (int *,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int numportals ;
 TYPE_1__* portals ;

void WritePortals( char *filename ){
 int i, j, num;
 FILE *pf;
 vportal_t *p;
 fixedWinding_t *w;


 pf = fopen( filename, "w" );
 if ( !pf ) {
  Error( "Error opening %s", filename );
 }

 num = 0;
 for ( j = 0; j < numportals * 2; j++ )
 {
  p = portals + j;
  if ( p->removed ) {
   continue;
  }


  num++;
 }

 fprintf( pf, "%s\n", PORTALFILE );
 fprintf( pf, "%i\n", 0 );
 fprintf( pf, "%i\n", num );
 fprintf( pf, "%i\n", 0 );

 for ( j = 0; j < numportals * 2; j++ )
 {
  p = portals + j;
  if ( p->removed ) {
   continue;
  }


  w = p->winding;
  fprintf( pf,"%i %i %i ",w->numpoints, 0, 0 );
  fprintf( pf, "%d ", p->hint );
  for ( i = 0 ; i < w->numpoints ; i++ )
  {
   fprintf( pf,"(" );
   WriteFloat( pf, w->points[i][0] );
   WriteFloat( pf, w->points[i][1] );
   WriteFloat( pf, w->points[i][2] );
   fprintf( pf,") " );
  }
  fprintf( pf,"\n" );
 }
 fclose( pf );
}
