
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* stringOffsets; scalar_t__ stringData; } ;
struct TYPE_6__ {TYPE_1__ gameState; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ CA_ACTIVE ;
 int Com_Printf (char*,...) ;
 int MAX_CONFIGSTRINGS ;
 TYPE_3__ cl ;
 TYPE_2__ clc ;

void CL_Configstrings_f( void ) {
 int i;
 int ofs;

 if ( clc.state != CA_ACTIVE ) {
  Com_Printf( "Not connected to a server.\n");
  return;
 }

 for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
  ofs = cl.gameState.stringOffsets[ i ];
  if ( !ofs ) {
   continue;
  }
  Com_Printf( "%4i: %s\n", i, cl.gameState.stringData + ofs );
 }
}
