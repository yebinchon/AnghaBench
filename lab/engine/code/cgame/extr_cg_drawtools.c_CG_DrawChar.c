
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int charsetShader; } ;
struct TYPE_4__ {TYPE_1__ media; } ;


 int CG_AdjustFrom640 (float*,float*,float*,float*) ;
 TYPE_2__ cgs ;
 int trap_R_DrawStretchPic (float,float,float,float,float,float,float,float,int ) ;

void CG_DrawChar( int x, int y, int width, int height, int ch ) {
 int row, col;
 float frow, fcol;
 float size;
 float ax, ay, aw, ah;

 ch &= 255;

 if ( ch == ' ' ) {
  return;
 }

 ax = x;
 ay = y;
 aw = width;
 ah = height;
 CG_AdjustFrom640( &ax, &ay, &aw, &ah );

 row = ch>>4;
 col = ch&15;

 frow = row*0.0625;
 fcol = col*0.0625;
 size = 0.0625;

 trap_R_DrawStretchPic( ax, ay, aw, ah,
        fcol, frow,
        fcol + size, frow + size,
        cgs.media.charsetShader );
}
