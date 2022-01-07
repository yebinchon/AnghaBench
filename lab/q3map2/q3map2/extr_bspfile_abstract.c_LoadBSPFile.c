
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* load ) (char const*) ;} ;


 int Error (char*) ;
 int SwapBSPFile () ;
 TYPE_1__* game ;
 int stub1 (char const*) ;

void LoadBSPFile( const char *filename ){

 if ( game == ((void*)0) || game->load == ((void*)0) ) {
  Error( "LoadBSPFile: unsupported BSP file format" );
 }


 game->load( filename );
 SwapBSPFile();
}
