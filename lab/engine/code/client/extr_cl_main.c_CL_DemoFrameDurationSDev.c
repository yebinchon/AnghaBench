
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeDemoFrames; float* timeDemoDurations; } ;


 int MAX_TIMEDEMO_DURATIONS ;
 TYPE_1__ clc ;
 float sqrt (float) ;

__attribute__((used)) static float CL_DemoFrameDurationSDev( void )
{
 int i;
 int numFrames;
 float mean = 0.0f;
 float variance = 0.0f;

 if( ( clc.timeDemoFrames - 1 ) > MAX_TIMEDEMO_DURATIONS )
  numFrames = MAX_TIMEDEMO_DURATIONS;
 else
  numFrames = clc.timeDemoFrames - 1;

 for( i = 0; i < numFrames; i++ )
  mean += clc.timeDemoDurations[ i ];
 mean /= numFrames;

 for( i = 0; i < numFrames; i++ )
 {
  float x = clc.timeDemoDurations[ i ];

  variance += ( ( x - mean ) * ( x - mean ) );
 }
 variance /= numFrames;

 return sqrt( variance );
}
