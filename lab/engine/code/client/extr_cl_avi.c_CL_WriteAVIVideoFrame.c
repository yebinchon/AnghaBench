
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const byte ;
struct TYPE_2__ {int fileSize; int moviOffset; int moviSize; int maxRecordSize; int numIndices; int idxF; int numVideoFrames; int f; int fileOpen; } ;


 scalar_t__ CL_CheckFileSize (int) ;
 int PADLEN (int,int) ;
 int SafeFS_Write (int const*,int,int ) ;
 int WRITE_4BYTES (int) ;
 int WRITE_STRING (char*) ;
 TYPE_1__ afd ;
 scalar_t__ bufIndex ;
 int const* buffer ;

void CL_WriteAVIVideoFrame( const byte *imageBuffer, int size )
{
  int chunkOffset = afd.fileSize - afd.moviOffset - 8;
  int chunkSize = 8 + size;
  int paddingSize = PADLEN(size, 2);
  byte padding[ 4 ] = { 0 };

  if( !afd.fileOpen )
    return;


  if( CL_CheckFileSize( 8 + size + 2 ) )
    return;

  bufIndex = 0;
  WRITE_STRING( "00dc" );
  WRITE_4BYTES( size );

  SafeFS_Write( buffer, 8, afd.f );
  SafeFS_Write( imageBuffer, size, afd.f );
  SafeFS_Write( padding, paddingSize, afd.f );
  afd.fileSize += ( chunkSize + paddingSize );

  afd.numVideoFrames++;
  afd.moviSize += ( chunkSize + paddingSize );

  if( size > afd.maxRecordSize )
    afd.maxRecordSize = size;


  bufIndex = 0;
  WRITE_STRING( "00dc" );
  WRITE_4BYTES( 0x00000010 );
  WRITE_4BYTES( chunkOffset );
  WRITE_4BYTES( size );
  SafeFS_Write( buffer, 16, afd.idxF );

  afd.numIndices++;
}
