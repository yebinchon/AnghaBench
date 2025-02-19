
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * vec4_t ;
typedef int newColor ;
struct TYPE_8__ {float top; float xSkip; int glyph; int t2; int s2; int t; int s; int imageHeight; int imageWidth; } ;
typedef TYPE_2__ glyphInfo_t ;
struct TYPE_9__ {float glyphScale; TYPE_2__* glyphs; } ;
typedef TYPE_3__ fontInfo_t ;
struct TYPE_7__ {TYPE_3__ bigFont; TYPE_3__ smallFont; TYPE_3__ textFont; } ;
struct TYPE_12__ {TYPE_1__ Assets; } ;
struct TYPE_11__ {float value; } ;
struct TYPE_10__ {float value; } ;


 int CG_Text_PaintChar (float,float,int ,int ,float,int ,int ,int ,int ,int ) ;
 float CG_Text_Width (char const*,float,int) ;
 size_t ColorIndex (char const) ;
 scalar_t__ Q_IsColorString (char const*) ;
 TYPE_6__ cgDC ;
 TYPE_5__ cg_bigFont ;
 TYPE_4__ cg_smallFont ;
 int * g_color_table ;
 int memcpy (int *,int ,int) ;
 int strlen (char const*) ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_Text_Paint_Limit(float *maxX, float x, float y, float scale, vec4_t color, const char* text, float adjust, int limit) {
  int len, count;
 vec4_t newColor;
 glyphInfo_t *glyph;
  if (text) {
    const char *s = text;
  float max = *maxX;
  float useScale;
  fontInfo_t *font = &cgDC.Assets.textFont;
  if (scale <= cg_smallFont.value) {
   font = &cgDC.Assets.smallFont;
  } else if (scale > cg_bigFont.value) {
   font = &cgDC.Assets.bigFont;
  }
  useScale = scale * font->glyphScale;
  trap_R_SetColor( color );
    len = strlen(text);
  if (limit > 0 && len > limit) {
   len = limit;
  }
  count = 0;
  while (s && *s && count < len) {
   glyph = &font->glyphs[*s & 255];
   if ( Q_IsColorString( s ) ) {
    memcpy( newColor, g_color_table[ColorIndex(*(s+1))], sizeof( newColor ) );
    newColor[3] = color[3];
    trap_R_SetColor( newColor );
    s += 2;
    continue;
   } else {
       float yadj = useScale * glyph->top;
    if (CG_Text_Width(s, scale, 1) + x > max) {
     *maxX = 0;
     break;
    }
      CG_Text_PaintChar(x, y - yadj,
                       glyph->imageWidth,
                      glyph->imageHeight,
                     useScale,
                    glyph->s,
                   glyph->t,
                  glyph->s2,
                 glyph->t2,
                glyph->glyph);
       x += (glyph->xSkip * useScale) + adjust;
    *maxX = x;
    count++;
    s++;
     }
  }
   trap_R_SetColor( ((void*)0) );
  }

}
