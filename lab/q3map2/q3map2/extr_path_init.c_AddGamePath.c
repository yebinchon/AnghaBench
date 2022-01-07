
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CleanPath (int *) ;
 size_t MAX_GAME_PATHS ;
 int free (int *) ;
 int ** gamePaths ;
 size_t numGamePaths ;
 int * safe_malloc (scalar_t__) ;
 scalar_t__ strcmp (int *,int *) ;
 int strcpy (int *,char*) ;
 scalar_t__ strlen (char*) ;

void AddGamePath( char *path ){
 int i;


 if ( path == ((void*)0) || path[ 0 ] == '\0' || numGamePaths >= MAX_GAME_PATHS ) {
  return;
 }


 gamePaths[ numGamePaths ] = safe_malloc( strlen( path ) + 1 );
 strcpy( gamePaths[ numGamePaths ], path );
 CleanPath( gamePaths[ numGamePaths ] );
 numGamePaths++;


 for ( i = 0; i < numGamePaths - 1; i++ )
 {
  if ( strcmp( gamePaths[i], gamePaths[numGamePaths - 1] ) == 0 ) {
   free( gamePaths[numGamePaths - 1] );
   gamePaths[numGamePaths - 1] = ((void*)0);
   numGamePaths--;
   break;
  }
 }

}
