
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sampleSize; int rate; int totalBytes; int format; int channels; int bits; } ;
struct TYPE_4__ {int framePeriod; int maxRecordSize; int frameRate; int numVideoFrames; int width; int height; scalar_t__ moviOffset; TYPE_1__ a; scalar_t__ audio; scalar_t__ motionJpeg; scalar_t__ chunkStackTop; } ;


 int END_CHUNK () ;
 int START_CHUNK (char*) ;
 int WRITE_2BYTES (int) ;
 int WRITE_4BYTES (int) ;
 int WRITE_STRING (char*) ;
 TYPE_2__ afd ;
 scalar_t__ bufIndex ;

void CL_WriteAVIHeader( void )
{
  bufIndex = 0;
  afd.chunkStackTop = 0;

  START_CHUNK( "RIFF" );
  {
    WRITE_STRING( "AVI " );
    {
      START_CHUNK( "LIST" );
      {
        WRITE_STRING( "hdrl" );
        WRITE_STRING( "avih" );
        WRITE_4BYTES( 56 );
        WRITE_4BYTES( afd.framePeriod );
        WRITE_4BYTES( afd.maxRecordSize *
            afd.frameRate );
        WRITE_4BYTES( 0 );
        WRITE_4BYTES( 0x110 );
        WRITE_4BYTES( afd.numVideoFrames );
        WRITE_4BYTES( 0 );

        if( afd.audio )
          WRITE_4BYTES( 2 );
        else
          WRITE_4BYTES( 1 );

        WRITE_4BYTES( afd.maxRecordSize );
        WRITE_4BYTES( afd.width );
        WRITE_4BYTES( afd.height );
        WRITE_4BYTES( 0 );
        WRITE_4BYTES( 0 );
        WRITE_4BYTES( 0 );
        WRITE_4BYTES( 0 );

        START_CHUNK( "LIST" );
        {
          WRITE_STRING( "strl" );
          WRITE_STRING( "strh" );
          WRITE_4BYTES( 56 );
          WRITE_STRING( "vids" );

          if( afd.motionJpeg )
            WRITE_STRING( "MJPG" );
          else
            WRITE_4BYTES( 0 );

          WRITE_4BYTES( 0 );
          WRITE_4BYTES( 0 );
          WRITE_4BYTES( 0 );

          WRITE_4BYTES( 1 );
          WRITE_4BYTES( afd.frameRate );
          WRITE_4BYTES( 0 );
          WRITE_4BYTES( afd.numVideoFrames );

          WRITE_4BYTES( afd.maxRecordSize );
          WRITE_4BYTES( -1 );
          WRITE_4BYTES( 0 );
          WRITE_2BYTES( 0 );
          WRITE_2BYTES( 0 );
          WRITE_2BYTES( afd.width );
          WRITE_2BYTES( afd.height );

          WRITE_STRING( "strf" );
          WRITE_4BYTES( 40 );
          WRITE_4BYTES( 40 );
          WRITE_4BYTES( afd.width );
          WRITE_4BYTES( afd.height );
          WRITE_2BYTES( 1 );
          WRITE_2BYTES( 24 );

          if( afd.motionJpeg )
          {
            WRITE_STRING( "MJPG" );
            WRITE_4BYTES( afd.width *
                afd.height );
          }
          else
          {
            WRITE_4BYTES( 0 );
            WRITE_4BYTES( afd.width *
                afd.height * 3 );
          }

          WRITE_4BYTES( 0 );
          WRITE_4BYTES( 0 );
          WRITE_4BYTES( 0 );
          WRITE_4BYTES( 0 );
        }
        END_CHUNK( );

        if( afd.audio )
        {
          START_CHUNK( "LIST" );
          {
            WRITE_STRING( "strl" );
            WRITE_STRING( "strh" );
            WRITE_4BYTES( 56 );
            WRITE_STRING( "auds" );
            WRITE_4BYTES( 0 );
            WRITE_4BYTES( 0 );
            WRITE_4BYTES( 0 );
            WRITE_4BYTES( 0 );

            WRITE_4BYTES( afd.a.sampleSize );
            WRITE_4BYTES( afd.a.sampleSize *
                afd.a.rate );
            WRITE_4BYTES( 0 );
            WRITE_4BYTES( afd.a.totalBytes /
                afd.a.sampleSize );

            WRITE_4BYTES( 0 );
            WRITE_4BYTES( -1 );
            WRITE_4BYTES( afd.a.sampleSize );
            WRITE_2BYTES( 0 );
            WRITE_2BYTES( 0 );
            WRITE_2BYTES( 0 );
            WRITE_2BYTES( 0 );

            WRITE_STRING( "strf" );
            WRITE_4BYTES( 18 );
            WRITE_2BYTES( afd.a.format );
            WRITE_2BYTES( afd.a.channels );
            WRITE_4BYTES( afd.a.rate );
            WRITE_4BYTES( afd.a.sampleSize *
                afd.a.rate );
            WRITE_2BYTES( afd.a.sampleSize );
            WRITE_2BYTES( afd.a.bits );
            WRITE_2BYTES( 0 );
          }
          END_CHUNK( );
        }
      }
      END_CHUNK( );

      afd.moviOffset = bufIndex;

      START_CHUNK( "LIST" );
      {
        WRITE_STRING( "movi" );
      }
    }
  }
}
