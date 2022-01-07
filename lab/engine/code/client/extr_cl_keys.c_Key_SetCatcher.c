
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Key_ClearStates () ;
 int keyCatchers ;

void Key_SetCatcher( int catcher ) {

 if( catcher != keyCatchers )
  Key_ClearStates( );

 keyCatchers = catcher;
}
