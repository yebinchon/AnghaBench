
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int fileSize; int numIndices; int fileName; } ;


 int CL_CloseAVI () ;
 int CL_OpenAVIForWriting (int ) ;
 unsigned int INT_MAX ;
 TYPE_1__ afd ;
 int qfalse ;
 int qtrue ;
 int va (char*,int ) ;

__attribute__((used)) static qboolean CL_CheckFileSize( int bytesToAdd )
{
  unsigned int newFileSize;

  newFileSize =
    afd.fileSize +
    bytesToAdd +
    ( afd.numIndices * 16 ) +
    4;



  if( newFileSize > INT_MAX )
  {

    CL_CloseAVI( );


    CL_OpenAVIForWriting( va( "%s_", afd.fileName ) );

    return qtrue;
  }

  return qfalse;
}
