
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_gcontext_t ;
typedef int uint32_t ;
struct TYPE_9__ {int colorpixel; int alpha; int blue; int green; int red; } ;
typedef TYPE_3__ color_t ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_1__ xcb; } ;
struct TYPE_10__ {int type; TYPE_2__ specific; } ;





 int XCB_GC_BACKGROUND ;
 int XCB_GC_FONT ;
 int XCB_GC_FOREGROUND ;
 int assert (int ) ;
 int conn ;
 int pango_font_alpha ;
 int pango_font_blue ;
 int pango_font_green ;
 int pango_font_red ;
 TYPE_6__* savedFont ;
 int xcb_change_gc (int ,int ,int,int*) ;

void set_font_colors(xcb_gcontext_t gc, color_t foreground, color_t background) {
    assert(savedFont != ((void*)0));

    switch (savedFont->type) {
        case 130:

            break;
        case 128: {

            uint32_t mask = XCB_GC_FOREGROUND | XCB_GC_BACKGROUND | XCB_GC_FONT;
            uint32_t values[] = {foreground.colorpixel, background.colorpixel, savedFont->specific.xcb.id};
            xcb_change_gc(conn, gc, mask, values);
            break;
        }
        case 129:

            pango_font_red = foreground.red;
            pango_font_green = foreground.green;
            pango_font_blue = foreground.blue;
            pango_font_alpha = foreground.alpha;
            break;
    }
}
