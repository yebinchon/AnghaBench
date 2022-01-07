
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int num ;
struct TYPE_3__ {int * numberShaders; } ;
struct TYPE_4__ {TYPE_1__ media; } ;


 int CG_DrawPic (int,int,int,int ,int ) ;
 int CHAR_HEIGHT ;
 int CHAR_WIDTH ;
 int Com_sprintf (char*,int,char*,int) ;
 int STAT_MINUS ;
 TYPE_2__ cgs ;
 int strlen (char*) ;

__attribute__((used)) static void CG_DrawField (int x, int y, int width, int value) {
 char num[16], *ptr;
 int l;
 int frame;

 if ( width < 1 ) {
  return;
 }


 if ( width > 5 ) {
  width = 5;
 }

 switch ( width ) {
 case 1:
  value = value > 9 ? 9 : value;
  value = value < 0 ? 0 : value;
  break;
 case 2:
  value = value > 99 ? 99 : value;
  value = value < -9 ? -9 : value;
  break;
 case 3:
  value = value > 999 ? 999 : value;
  value = value < -99 ? -99 : value;
  break;
 case 4:
  value = value > 9999 ? 9999 : value;
  value = value < -999 ? -999 : value;
  break;
 }

 Com_sprintf (num, sizeof(num), "%i", value);
 l = strlen(num);
 if (l > width)
  l = width;
 x += 2 + CHAR_WIDTH*(width - l);

 ptr = num;
 while (*ptr && l)
 {
  if (*ptr == '-')
   frame = STAT_MINUS;
  else
   frame = *ptr -'0';

  CG_DrawPic( x,y, CHAR_WIDTH, CHAR_HEIGHT, cgs.media.numberShaders[frame] );
  x += CHAR_WIDTH;
  ptr++;
  l--;
 }
}
