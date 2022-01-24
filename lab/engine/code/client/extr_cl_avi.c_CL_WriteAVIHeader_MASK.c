#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sampleSize; int rate; int totalBytes; int format; int channels; int bits; } ;
struct TYPE_4__ {int framePeriod; int maxRecordSize; int frameRate; int numVideoFrames; int width; int height; scalar_t__ moviOffset; TYPE_1__ a; scalar_t__ audio; scalar_t__ motionJpeg; scalar_t__ chunkStackTop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__ afd ; 
 scalar_t__ bufIndex ; 

void FUNC5( void )
{
  bufIndex = 0;
  afd.chunkStackTop = 0;

  FUNC1( "RIFF" );
  {
    FUNC4( "AVI " );
    {
      FUNC1( "LIST" );
      {
        FUNC4( "hdrl" );
        FUNC4( "avih" );
        FUNC3( 56 );                     //"avih" "chunk" size
        FUNC3( afd.framePeriod );        //dwMicroSecPerFrame
        FUNC3( afd.maxRecordSize *
            afd.frameRate );                    //dwMaxBytesPerSec
        FUNC3( 0 );                      //dwReserved1
        FUNC3( 0x110 );                  //dwFlags bits HAS_INDEX and IS_INTERLEAVED
        FUNC3( afd.numVideoFrames );     //dwTotalFrames
        FUNC3( 0 );                      //dwInitialFrame

        if( afd.audio )                         //dwStreams
          FUNC3( 2 );
        else
          FUNC3( 1 );

        FUNC3( afd.maxRecordSize );      //dwSuggestedBufferSize
        FUNC3( afd.width );              //dwWidth
        FUNC3( afd.height );             //dwHeight
        FUNC3( 0 );                      //dwReserved[ 0 ]
        FUNC3( 0 );                      //dwReserved[ 1 ]
        FUNC3( 0 );                      //dwReserved[ 2 ]
        FUNC3( 0 );                      //dwReserved[ 3 ]

        FUNC1( "LIST" );
        {
          FUNC4( "strl" );
          FUNC4( "strh" );
          FUNC3( 56 );                   //"strh" "chunk" size
          FUNC4( "vids" );

          if( afd.motionJpeg )
            FUNC4( "MJPG" );
          else
            FUNC3( 0 );                  // BI_RGB

          FUNC3( 0 );                    //dwFlags
          FUNC3( 0 );                    //dwPriority
          FUNC3( 0 );                    //dwInitialFrame

          FUNC3( 1 );                    //dwTimescale
          FUNC3( afd.frameRate );        //dwDataRate
          FUNC3( 0 );                    //dwStartTime
          FUNC3( afd.numVideoFrames );   //dwDataLength

          FUNC3( afd.maxRecordSize );    //dwSuggestedBufferSize
          FUNC3( -1 );                   //dwQuality
          FUNC3( 0 );                    //dwSampleSize
          FUNC2( 0 );                    //rcFrame
          FUNC2( 0 );                    //rcFrame
          FUNC2( afd.width );            //rcFrame
          FUNC2( afd.height );           //rcFrame

          FUNC4( "strf" );
          FUNC3( 40 );                   //"strf" "chunk" size
          FUNC3( 40 );                   //biSize
          FUNC3( afd.width );            //biWidth
          FUNC3( afd.height );           //biHeight
          FUNC2( 1 );                    //biPlanes
          FUNC2( 24 );                   //biBitCount

          if( afd.motionJpeg )                  //biCompression
          {
            FUNC4( "MJPG" );
            FUNC3( afd.width *
                afd.height );                   //biSizeImage
          }
          else
          {
            FUNC3( 0 );                  // BI_RGB
            FUNC3( afd.width *
                afd.height * 3 );               //biSizeImage
          }

          FUNC3( 0 );                    //biXPelsPetMeter
          FUNC3( 0 );                    //biYPelsPetMeter
          FUNC3( 0 );                    //biClrUsed
          FUNC3( 0 );                    //biClrImportant
        }
        FUNC0( );

        if( afd.audio )
        {
          FUNC1( "LIST" );
          {
            FUNC4( "strl" );
            FUNC4( "strh" );
            FUNC3( 56 );                 //"strh" "chunk" size
            FUNC4( "auds" );
            FUNC3( 0 );                  //FCC
            FUNC3( 0 );                  //dwFlags
            FUNC3( 0 );                  //dwPriority
            FUNC3( 0 );                  //dwInitialFrame

            FUNC3( afd.a.sampleSize );   //dwTimescale
            FUNC3( afd.a.sampleSize *
                afd.a.rate );                   //dwDataRate
            FUNC3( 0 );                  //dwStartTime
            FUNC3( afd.a.totalBytes /
                afd.a.sampleSize );             //dwDataLength

            FUNC3( 0 );                  //dwSuggestedBufferSize
            FUNC3( -1 );                 //dwQuality
            FUNC3( afd.a.sampleSize );   //dwSampleSize
            FUNC2( 0 );                  //rcFrame
            FUNC2( 0 );                  //rcFrame
            FUNC2( 0 );                  //rcFrame
            FUNC2( 0 );                  //rcFrame

            FUNC4( "strf" );
            FUNC3( 18 );                 //"strf" "chunk" size
            FUNC2( afd.a.format );       //wFormatTag
            FUNC2( afd.a.channels );     //nChannels
            FUNC3( afd.a.rate );         //nSamplesPerSec
            FUNC3( afd.a.sampleSize *
                afd.a.rate );                   //nAvgBytesPerSec
            FUNC2( afd.a.sampleSize );   //nBlockAlign
            FUNC2( afd.a.bits );         //wBitsPerSample
            FUNC2( 0 );                  //cbSize
          }
          FUNC0( );
        }
      }
      FUNC0( );

      afd.moviOffset = bufIndex;

      FUNC1( "LIST" );
      {
        FUNC4( "movi" );
      }
    }
  }
}