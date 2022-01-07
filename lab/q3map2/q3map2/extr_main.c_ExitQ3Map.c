
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BSPFilesCleanup () ;
 int free (int *) ;
 int * mapDrawSurfs ;

__attribute__((used)) static void ExitQ3Map( void ){
 BSPFilesCleanup();
 if ( mapDrawSurfs != ((void*)0) ) {
  free( mapDrawSurfs );
 }
}
