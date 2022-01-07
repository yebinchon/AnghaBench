
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int* awardsEarned; int* awardsLevels; } ;


 int AWARD_ACCURACY ;
 int Com_sprintf (char*,int,char*,int) ;
 int UI_CENTER ;
 int UI_DrawNamedPic (int,int,int,int,int ) ;
 int UI_DrawString (int,int,char*,int ,int ) ;
 int color_yellow ;
 int* medalLocations ;
 TYPE_1__ postgameMenuInfo ;
 int * ui_medalPicNames ;

__attribute__((used)) static void UI_SPPostgameMenu_DrawAwardsMedals( int max ) {
 int n;
 int medal;
 int amount;
 int x, y;
 char buf[16];

 for( n = 0; n < max; n++ ) {
  x = medalLocations[n];
  y = 64;
  medal = postgameMenuInfo.awardsEarned[n];
  amount = postgameMenuInfo.awardsLevels[n];

  UI_DrawNamedPic( x, y, 48, 48, ui_medalPicNames[medal] );

  if( medal == AWARD_ACCURACY ) {
   Com_sprintf( buf, sizeof(buf), "%i%%", amount );
  }
  else {
   if( amount == 1 ) {
    continue;
   }
   Com_sprintf( buf, sizeof(buf), "%i", amount );
  }

  UI_DrawString( x + 24, y + 52, buf, UI_CENTER, color_yellow );
 }
}
