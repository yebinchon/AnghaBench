
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* gamePath; char* magic; char* arg; int homeBasePath; } ;


 int AddBasePath (char*) ;
 int AddGamePath (char*) ;
 int AddHomeBasePath (int ) ;
 int CleanPath (char*) ;
 int Error (char*,...) ;
 TYPE_1__* GetGame (char*) ;
 int LokiInitPaths (char*) ;
 int MAX_BASE_PATHS ;
 int MAX_GAME_PATHS ;
 int MAX_OS_PATH ;
 scalar_t__ Q_strncasecmp (char*,char*,int) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int Sys_Printf (char*) ;
 char** basePaths ;
 TYPE_1__* game ;
 char** gamePaths ;
 TYPE_1__* games ;
 char* installPath ;
 int numBasePaths ;
 int numGamePaths ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int unz_GAME_QL ;
 int vfsInitDirectory (char*) ;

void InitPaths( int *argc, char **argv ){
 int i, j, k, len, len2;
 char temp[ MAX_OS_PATH ];


 Sys_FPrintf( SYS_VRB, "--- InitPaths ---\n" );


 LokiInitPaths( argv[ 0 ] );


 game = &games[ 0 ];
 numBasePaths = 0;
 numGamePaths = 0;


 for ( i = 0; i < *argc; i++ )
 {

  if ( argv[ i ] == ((void*)0) ) {
   continue;
  }


  if ( strcmp( argv[ i ], "-game" ) == 0 ) {
   if ( ++i >= *argc ) {
    Error( "Out of arguments: No game specified after %s", argv[ i - 1 ] );
   }
   argv[ i - 1 ] = ((void*)0);
   game = GetGame( argv[ i ] );
   if ( game == ((void*)0) ) {
    game = &games[ 0 ];
   }
   argv[ i ] = ((void*)0);
  }


  else if ( strcmp( argv[ i ], "-fs_basepath" ) == 0 ) {
   if ( ++i >= *argc ) {
    Error( "Out of arguments: No path specified after %s.", argv[ i - 1 ] );
   }
   argv[ i - 1 ] = ((void*)0);
   AddBasePath( argv[ i ] );
   argv[ i ] = ((void*)0);
  }


  else if ( strcmp( argv[ i ], "-fs_game" ) == 0 ) {
   if ( ++i >= *argc ) {
    Error( "Out of arguments: No path specified after %s.", argv[ i - 1 ] );
   }
   argv[ i - 1 ] = ((void*)0);
   AddGamePath( argv[ i ] );
   argv[ i ] = ((void*)0);
  }
 }


 for ( i = 0, j = 0, k = 0; i < *argc && j < *argc; i++, j++ )
 {
  for ( ; j < *argc && argv[ j ] == ((void*)0); j++ ) ;
  argv[ i ] = argv[ j ];
  if ( argv[ i ] != ((void*)0) ) {
   k++;
  }
 }
 *argc = k;


 AddGamePath( game->gamePath );


 if ( numBasePaths == 0 ) {

  len2 = strlen( game->magic );
  for ( i = 0; i < *argc && numBasePaths == 0; i++ )
  {

   strcpy( temp, argv[ i ] );
   CleanPath( temp );
   len = strlen( temp );
   Sys_FPrintf( SYS_VRB, "Searching for \"%s\" in \"%s\" (%d)...\n", game->magic, temp, i );


   for ( j = 0; j < ( len - len2 ); j++ )
   {

    if ( Q_strncasecmp( &temp[ j ], game->magic, len2 ) == 0 ) {

     while ( temp[ ++j ] != '/' && temp[ j ] != '\0' ) ;
     temp[ j ] = '\0';


     AddBasePath( temp );
     break;
    }
   }
  }


  if ( numBasePaths == 0 ) {
   AddBasePath( installPath );
  }


  if ( numBasePaths == 0 ) {
   Error( "Failed to find a valid base path." );
  }
 }


 AddHomeBasePath( game->homeBasePath );


 if ( numBasePaths > MAX_BASE_PATHS ) {
  numBasePaths = MAX_BASE_PATHS;
 }
 if ( numGamePaths > MAX_GAME_PATHS ) {
  numGamePaths = MAX_GAME_PATHS;
 }


 for ( j = 0; j < numGamePaths; j++ )
 {

  for ( i = 0; i < numBasePaths; i++ )
  {

   sprintf( temp, "%s/%s/", basePaths[ i ], gamePaths[ j ] );

   if (strcmp(game->arg, "quakelive") == 0 ) {
    unz_GAME_QL = 1;
   } else {
    unz_GAME_QL = 0;
   }
   vfsInitDirectory( temp );
  }
 }


 Sys_Printf( "\n" );
}
