
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int (* write ) (char*) ;} ;


 int Error (char*) ;
 int SwapBSPFile () ;
 TYPE_1__* game ;
 int remove (char const*) ;
 int rename (char*,char const*) ;
 int sprintf (char*,char*,char const*,int) ;
 int stub1 (char*) ;
 int time (scalar_t__*) ;

void WriteBSPFile( const char *filename ){
 char tempname[ 1024 ];
 time_t tm;



 if ( game == ((void*)0) || game->write == ((void*)0) ) {
  Error( "WriteBSPFile: unsupported BSP file format" );
 }


 time( &tm );
 sprintf( tempname, "%s.%08X", filename, (int) tm );


 SwapBSPFile();
 game->write( tempname );
 SwapBSPFile();


 remove( filename );
 rename( tempname, filename );
}
