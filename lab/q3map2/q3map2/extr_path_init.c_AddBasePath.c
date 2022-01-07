
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CleanPath (int ) ;
 size_t MAX_BASE_PATHS ;
 int * basePaths ;
 size_t numBasePaths ;
 int safe_malloc (scalar_t__) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

void AddBasePath( char *path ){

 if ( path == ((void*)0) || path[ 0 ] == '\0' || numBasePaths >= MAX_BASE_PATHS ) {
  return;
 }


 basePaths[ numBasePaths ] = safe_malloc( strlen( path ) + 1 );
 strcpy( basePaths[ numBasePaths ], path );
 CleanPath( basePaths[ numBasePaths ] );
 numBasePaths++;
}
