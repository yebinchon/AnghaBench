#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const byte ;
struct TYPE_2__ {int fileSize; int moviOffset; int moviSize; int maxRecordSize; int /*<<< orphan*/  numIndices; int /*<<< orphan*/  idxF; int /*<<< orphan*/  numVideoFrames; int /*<<< orphan*/  f; int /*<<< orphan*/  fileOpen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ afd ; 
 scalar_t__ bufIndex ; 
 int /*<<< orphan*/  const* buffer ; 

void FUNC5( const byte *imageBuffer, int size )
{
  int   chunkOffset = afd.fileSize - afd.moviOffset - 8;
  int   chunkSize = 8 + size;
  int   paddingSize = FUNC1(size, 2);
  byte  padding[ 4 ] = { 0 };

  if( !afd.fileOpen )
    return;

  // Chunk header + contents + padding
  if( FUNC0( 8 + size + 2 ) )
    return;

  bufIndex = 0;
  FUNC4( "00dc" );
  FUNC3( size );

  FUNC2( buffer, 8, afd.f );
  FUNC2( imageBuffer, size, afd.f );
  FUNC2( padding, paddingSize, afd.f );
  afd.fileSize += ( chunkSize + paddingSize );

  afd.numVideoFrames++;
  afd.moviSize += ( chunkSize + paddingSize );

  if( size > afd.maxRecordSize )
    afd.maxRecordSize = size;

  // Index
  bufIndex = 0;
  FUNC4( "00dc" );           //dwIdentifier
  FUNC3( 0x00000010 );       //dwFlags (all frames are KeyFrames)
  FUNC3( chunkOffset );      //dwOffset
  FUNC3( size );             //dwLength
  FUNC2( buffer, 16, afd.idxF );

  afd.numIndices++;
}