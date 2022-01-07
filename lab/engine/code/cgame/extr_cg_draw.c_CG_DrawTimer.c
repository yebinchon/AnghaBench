
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int time; } ;
struct TYPE_3__ {int levelStartTime; } ;


 float BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,float,char*,float) ;
 int CG_DrawStrlen (char*) ;
 TYPE_2__ cg ;
 TYPE_1__ cgs ;
 char* va (char*,int,int,int) ;

__attribute__((used)) static float CG_DrawTimer( float y ) {
 char *s;
 int w;
 int mins, seconds, tens;
 int msec;

 msec = cg.time - cgs.levelStartTime;

 seconds = msec / 1000;
 mins = seconds / 60;
 seconds -= mins * 60;
 tens = seconds / 10;
 seconds -= tens * 10;

 s = va( "%i:%i%i", mins, tens, seconds );
 w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;

 CG_DrawBigString( 635 - w, y + 2, s, 1.0F);

 return y + BIGCHAR_HEIGHT + 4;
}
