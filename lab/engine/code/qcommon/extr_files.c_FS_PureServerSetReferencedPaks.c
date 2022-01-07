
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_LEN (int **) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Cmd_TokenizeString (char const*) ;
 int * CopyString (int ) ;
 int MAX_SEARCH_PATHS ;
 int Z_Free (int *) ;
 int atoi (int ) ;
 int fs_numServerReferencedPaks ;
 int ** fs_serverReferencedPakNames ;
 int * fs_serverReferencedPaks ;

void FS_PureServerSetReferencedPaks( const char *pakSums, const char *pakNames ) {
 int i, c, d = 0;

 Cmd_TokenizeString( pakSums );

 c = Cmd_Argc();
 if ( c > MAX_SEARCH_PATHS ) {
  c = MAX_SEARCH_PATHS;
 }

 for ( i = 0 ; i < c ; i++ ) {
  fs_serverReferencedPaks[i] = atoi( Cmd_Argv( i ) );
 }

 for (i = 0 ; i < ARRAY_LEN(fs_serverReferencedPakNames); i++)
 {
  if(fs_serverReferencedPakNames[i])
   Z_Free(fs_serverReferencedPakNames[i]);

  fs_serverReferencedPakNames[i] = ((void*)0);
 }

 if ( pakNames && *pakNames ) {
  Cmd_TokenizeString( pakNames );

  d = Cmd_Argc();

  if(d > c)
   d = c;

  for ( i = 0 ; i < d ; i++ ) {
   fs_serverReferencedPakNames[i] = CopyString( Cmd_Argv( i ) );
  }
 }


 if(d < c)
  c = d;

 fs_numServerReferencedPaks = c;
}
