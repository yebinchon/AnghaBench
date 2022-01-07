
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ fileHandle_t ;
typedef int buffer ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {char* string; } ;
struct TYPE_4__ {int timeDemoStart; double timeDemoFrames; char** timeDemoDurations; int timeDemoMaxDuration; int timeDemoMinDuration; } ;


 int CL_DemoFrameDurationSDev () ;
 int CL_Disconnect (int ) ;
 int CL_NextDemo () ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,double,int,double,int ,int,int ,int ) ;
 int FS_FCloseFile (scalar_t__) ;
 scalar_t__ FS_FOpenFileWrite (char*) ;
 int FS_Printf (scalar_t__,char*,char*) ;
 int MAX_STRING_CHARS ;
 int MAX_TIMEDEMO_DURATIONS ;
 int Sys_Milliseconds () ;
 TYPE_3__* cl_timedemo ;
 TYPE_2__* cl_timedemoLog ;
 TYPE_1__ clc ;
 int qtrue ;
 scalar_t__ strlen (char*) ;

void CL_DemoCompleted( void )
{
 char buffer[ MAX_STRING_CHARS ];

 if( cl_timedemo && cl_timedemo->integer )
 {
  int time;

  time = Sys_Milliseconds() - clc.timeDemoStart;
  if( time > 0 )
  {


   Com_sprintf( buffer, sizeof( buffer ),
     "%i frames %3.1f seconds %3.1f fps %d.0/%.1f/%d.0/%.1f ms\n",
     clc.timeDemoFrames,
     time/1000.0,
     clc.timeDemoFrames*1000.0 / time,
     clc.timeDemoMinDuration,
     time / (float)clc.timeDemoFrames,
     clc.timeDemoMaxDuration,
     CL_DemoFrameDurationSDev( ) );
   Com_Printf( "%s", buffer );


   if( cl_timedemoLog && strlen( cl_timedemoLog->string ) > 0 )
   {
    int i;
    int numFrames;
    fileHandle_t f;

    if( ( clc.timeDemoFrames - 1 ) > MAX_TIMEDEMO_DURATIONS )
     numFrames = MAX_TIMEDEMO_DURATIONS;
    else
     numFrames = clc.timeDemoFrames - 1;

    f = FS_FOpenFileWrite( cl_timedemoLog->string );
    if( f )
    {
     FS_Printf( f, "# %s", buffer );

     for( i = 0; i < numFrames; i++ )
      FS_Printf( f, "%d\n", clc.timeDemoDurations[ i ] );

     FS_FCloseFile( f );
     Com_Printf( "%s written\n", cl_timedemoLog->string );
    }
    else
    {
     Com_Printf( "Couldn't open %s for writing\n",
       cl_timedemoLog->string );
    }
   }
  }
 }

 CL_Disconnect( qtrue );
 CL_NextDemo();
}
