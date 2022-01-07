
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int st ;
struct TYPE_5__ {TYPE_1__* pack; struct TYPE_5__* next; } ;
typedef TYPE_2__ searchpath_t ;
typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ checksum; } ;


 int BASEGAME ;
 int BASETA ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,char*,scalar_t__) ;
 scalar_t__ FS_CheckDirTraversal (char*) ;
 scalar_t__ FS_SV_FileExists (int ) ;
 scalar_t__ FS_idPak (char*,int ,int ) ;
 int MAX_ZPATH ;
 int NUM_ID_PAKS ;
 int NUM_TA_PAKS ;
 int Q_strcat (char*,int,char*) ;
 int fs_numServerReferencedPaks ;
 TYPE_2__* fs_searchpaths ;
 char** fs_serverReferencedPakNames ;
 scalar_t__* fs_serverReferencedPaks ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int strlen (char*) ;
 int va (char*,char*) ;

qboolean FS_ComparePaks( char *neededpaks, int len, qboolean dlstring ) {
 searchpath_t *sp;
 qboolean havepak;
 char *origpos = neededpaks;
 int i;

 if (!fs_numServerReferencedPaks)
  return qfalse;

 *neededpaks = 0;

 for ( i = 0 ; i < fs_numServerReferencedPaks ; i++ )
 {

  havepak = qfalse;


  if(FS_idPak(fs_serverReferencedPakNames[i], BASEGAME, NUM_ID_PAKS)

    || FS_idPak(fs_serverReferencedPakNames[i], BASETA, NUM_TA_PAKS)

   )
  {
   continue;
  }


  if(FS_CheckDirTraversal(fs_serverReferencedPakNames[i]))
  {
   Com_Printf("WARNING: Invalid download name %s\n", fs_serverReferencedPakNames[i]);
   continue;
  }

  for ( sp = fs_searchpaths ; sp ; sp = sp->next ) {
   if ( sp->pack && sp->pack->checksum == fs_serverReferencedPaks[i] ) {
    havepak = qtrue;
    break;
   }
  }

  if ( !havepak && fs_serverReferencedPakNames[i] && *fs_serverReferencedPakNames[i] ) {


   if (dlstring)
   {




    origpos += strlen(origpos);


    Q_strcat( neededpaks, len, "@");
    Q_strcat( neededpaks, len, fs_serverReferencedPakNames[i] );
    Q_strcat( neededpaks, len, ".pk3" );


    Q_strcat( neededpaks, len, "@");

    if ( FS_SV_FileExists( va( "%s.pk3", fs_serverReferencedPakNames[i] ) ) )
    {
     char st[MAX_ZPATH];


     Com_sprintf( st, sizeof( st ), "%s.%08x.pk3", fs_serverReferencedPakNames[i], fs_serverReferencedPaks[i] );
     Q_strcat( neededpaks, len, st );
    }
    else
    {
     Q_strcat( neededpaks, len, fs_serverReferencedPakNames[i] );
     Q_strcat( neededpaks, len, ".pk3" );
    }



    if(strlen(origpos) + (origpos - neededpaks) >= len - 1)
    {
     *origpos = '\0';
     break;
    }
   }
   else
   {
    Q_strcat( neededpaks, len, fs_serverReferencedPakNames[i] );
    Q_strcat( neededpaks, len, ".pk3" );

    if ( FS_SV_FileExists( va( "%s.pk3", fs_serverReferencedPakNames[i] ) ) )
    {
     Q_strcat( neededpaks, len, " (local file exists with wrong checksum)");
    }
    Q_strcat( neededpaks, len, "\n");
   }
  }
 }

 if ( *neededpaks ) {
  return qtrue;
 }

 return qfalse;
}
