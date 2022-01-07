
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int x; int y; int width; int height; } ;
struct TYPE_10__ {TYPE_2__ refdef; } ;
struct TYPE_8__ {int backTileShader; } ;
struct TYPE_6__ {int vidWidth; int vidHeight; } ;
struct TYPE_9__ {TYPE_3__ media; TYPE_1__ glconfig; } ;


 int CG_TileClearBox (int,int,int,int,int ) ;
 TYPE_5__ cg ;
 TYPE_4__ cgs ;

void CG_TileClear( void ) {
 int top, bottom, left, right;
 int w, h;

 w = cgs.glconfig.vidWidth;
 h = cgs.glconfig.vidHeight;

 if ( cg.refdef.x == 0 && cg.refdef.y == 0 &&
  cg.refdef.width == w && cg.refdef.height == h ) {
  return;
 }

 top = cg.refdef.y;
 bottom = top + cg.refdef.height-1;
 left = cg.refdef.x;
 right = left + cg.refdef.width-1;


 CG_TileClearBox( 0, 0, w, top, cgs.media.backTileShader );


 CG_TileClearBox( 0, bottom, w, h - bottom, cgs.media.backTileShader );


 CG_TileClearBox( 0, top, left, bottom - top + 1, cgs.media.backTileShader );


 CG_TileClearBox( right, top, w - right, bottom - top + 1, cgs.media.backTileShader );
}
