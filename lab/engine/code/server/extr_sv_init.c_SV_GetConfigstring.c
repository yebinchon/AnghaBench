
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * configstrings; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int MAX_CONFIGSTRINGS ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_1__ sv ;

void SV_GetConfigstring( int index, char *buffer, int bufferSize ) {
 if ( bufferSize < 1 ) {
  Com_Error( ERR_DROP, "SV_GetConfigstring: bufferSize == %i", bufferSize );
 }
 if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
  Com_Error (ERR_DROP, "SV_GetConfigstring: bad index %i", index);
 }
 if ( !sv.configstrings[index] ) {
  buffer[0] = 0;
  return;
 }

 Q_strncpyz( buffer, sv.configstrings[index], bufferSize );
}
