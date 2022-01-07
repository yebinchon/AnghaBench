
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int raw ;
typedef int byte ;
struct TYPE_9__ {int speed; } ;
struct TYPE_6__ {int rate; int width; int channels; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
struct TYPE_7__ {scalar_t__ value; } ;


 scalar_t__ MAX_RAW_SAMPLES ;
 int S_Base_RawSamples (int ,int,int,int,int,int *,scalar_t__,int) ;
 int S_Base_StopBackgroundTrack () ;
 int S_CodecReadStream (TYPE_3__*,int,int *) ;
 int S_OpenBackgroundStream (scalar_t__*) ;
 TYPE_4__ dma ;
 scalar_t__* s_backgroundLoop ;
 TYPE_3__* s_backgroundStream ;
 TYPE_2__* s_musicVolume ;
 scalar_t__* s_rawend ;
 scalar_t__ s_soundtime ;

void S_UpdateBackgroundTrack( void ) {
 int bufferSamples;
 int fileSamples;
 byte raw[30000];
 int fileBytes;
 int r;

 if(!s_backgroundStream) {
  return;
 }


 if ( s_musicVolume->value <= 0 ) {
  return;
 }


 if ( s_rawend[0] < s_soundtime ) {
  s_rawend[0] = s_soundtime;
 }

 while ( s_rawend[0] < s_soundtime + MAX_RAW_SAMPLES ) {
  bufferSamples = MAX_RAW_SAMPLES - (s_rawend[0] - s_soundtime);


  fileSamples = bufferSamples * s_backgroundStream->info.rate / dma.speed;

  if (!fileSamples)
   return;


  fileBytes = fileSamples * (s_backgroundStream->info.width * s_backgroundStream->info.channels);
  if ( fileBytes > sizeof(raw) ) {
   fileBytes = sizeof(raw);
   fileSamples = fileBytes / (s_backgroundStream->info.width * s_backgroundStream->info.channels);
  }


  r = S_CodecReadStream(s_backgroundStream, fileBytes, raw);
  if(r < fileBytes)
  {
   fileSamples = r / (s_backgroundStream->info.width * s_backgroundStream->info.channels);
  }

  if(r > 0)
  {

   S_Base_RawSamples(0, fileSamples, s_backgroundStream->info.rate,
    s_backgroundStream->info.width, s_backgroundStream->info.channels, raw, s_musicVolume->value, -1);
  }
  else
  {

   if(s_backgroundLoop[0])
   {
    S_OpenBackgroundStream( s_backgroundLoop );
    if(!s_backgroundStream)
     return;
   }
   else
   {
    S_Base_StopBackgroundTrack();
    return;
   }
  }

 }
}
