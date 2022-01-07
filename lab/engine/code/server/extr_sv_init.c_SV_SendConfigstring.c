
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client_t ;
struct TYPE_2__ {int ** configstrings; } ;


 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,int *,int) ;
 int SV_SendServerCommand (int *,char*,...) ;
 int strlen (int *) ;
 TYPE_1__ sv ;

__attribute__((used)) static void SV_SendConfigstring(client_t *client, int index)
{
 int maxChunkSize = MAX_STRING_CHARS - 24;
 int len;

 len = strlen(sv.configstrings[index]);

 if( len >= maxChunkSize ) {
  int sent = 0;
  int remaining = len;
  char *cmd;
  char buf[MAX_STRING_CHARS];

  while (remaining > 0 ) {
   if ( sent == 0 ) {
    cmd = "bcs0";
   }
   else if( remaining < maxChunkSize ) {
    cmd = "bcs2";
   }
   else {
    cmd = "bcs1";
   }
   Q_strncpyz( buf, &sv.configstrings[index][sent],
    maxChunkSize );

   SV_SendServerCommand( client, "%s %i \"%s\"\n", cmd,
    index, buf );

   sent += (maxChunkSize - 1);
   remaining -= (maxChunkSize - 1);
  }
 } else {

  SV_SendServerCommand( client, "cs %i \"%s\"\n", index,
   sv.configstrings[index] );
 }
}
