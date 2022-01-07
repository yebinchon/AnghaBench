
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* glyphs; } ;
struct TYPE_8__ {TYPE_2__ textFont; } ;
struct TYPE_9__ {TYPE_3__ Assets; } ;
struct TYPE_10__ {TYPE_4__ uiDC; } ;
struct TYPE_6__ {int glyph; } ;


 int Com_Printf (char*,...) ;
 TYPE_5__ uiInfo ;

void Font_Report( void ) {
  int i;
  Com_Printf("Font Info\n");
  Com_Printf("=========\n");
  for ( i = 32; i < 96; i++) {
    Com_Printf("Glyph handle %i: %i\n", i, uiInfo.uiDC.Assets.textFont.glyphs[i].glyph);
  }
}
