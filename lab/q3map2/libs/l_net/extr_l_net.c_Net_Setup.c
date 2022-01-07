
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WINS_Init () ;
 int WINS_MyAddress () ;
 int WinPrint (char*,int ) ;
 int qfalse ;
 int qtrue ;

int Net_Setup( void ){
 if ( !WINS_Init() ) {
  return qfalse;
 }


 WinPrint( "my address is %s\n", WINS_MyAddress() );

 return qtrue;
}
