
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tshort ;
typedef int triangle_t ;
typedef int FILE ;


 short EDIT3DS ;
 int Error (char*) ;
 short MAIN3DS ;
 int MAXTRIANGLES ;
 int ParseChunk (int *) ;
 int SEEK_SET ;
 scalar_t__ bytesread ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fread (short*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ level ;
 scalar_t__ numtris ;
 int * ptri ;
 int * safe_malloc (int) ;
 int stderr ;
 int totaltris ;
 scalar_t__ trisfound ;
 scalar_t__ vertsfound ;

void Load3DSTriangleList( char *filename, triangle_t **pptri, int *numtriangles ){
 FILE *input;
 short int tshort;

 bytesread = 0;
 level = 0;
 numtris = 0;
 totaltris = 0;
 vertsfound = 0;
 trisfound = 0;

 if ( ( input = fopen( filename, "rb" ) ) == 0 ) {
  fprintf( stderr,"reader: could not open file '%s'\n", filename );
  exit( 0 );
 }

 fread( &tshort, sizeof( tshort ), 1, input );



 if ( ( tshort != MAIN3DS ) && ( tshort != EDIT3DS ) ) {
  fprintf( stderr,"File is not a 3DS file.\n" );
  exit( 0 );
 }


 fseek( input, 0, SEEK_SET );

 ptri = safe_malloc( MAXTRIANGLES * sizeof( triangle_t ) );

 *pptri = ptri;



 ParseChunk( input );

 if ( vertsfound || trisfound ) {
  Error( "Incomplete triangle set" );
 }

 *numtriangles = totaltris;

 fclose( input );
}
