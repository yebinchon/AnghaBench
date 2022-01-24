#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_visualtype_t ;
typedef  int /*<<< orphan*/  xcb_drawable_t ;
typedef  int gint ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_3__ {int /*<<< orphan*/  pango_desc; } ;
struct TYPE_4__ {int height; TYPE_1__ specific; } ;
typedef  int /*<<< orphan*/  PangoLayout ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_OPERATOR_SOURCE ; 
 int /*<<< orphan*/  PANGO_ELLIPSIZE_END ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/  PANGO_WRAP_CHAR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pango_font_alpha ; 
 int /*<<< orphan*/  pango_font_blue ; 
 int /*<<< orphan*/  pango_font_green ; 
 int /*<<< orphan*/  pango_font_red ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* savedFont ; 

__attribute__((used)) static void FUNC18(const char *text, size_t text_len,
                            xcb_drawable_t drawable, xcb_visualtype_t *visual, int x, int y,
                            int max_width, bool pango_markup) {
    /* Create the Pango layout */
    /* root_visual_type is cached in load_pango_font */
    cairo_surface_t *surface = FUNC6(conn, drawable,
                                                        visual, x + max_width, y + savedFont->height);
    cairo_t *cr = FUNC0(surface);
    PangoLayout *layout = FUNC7(cr);
    gint height;

    FUNC13(layout, savedFont->specific.pango_desc);
    FUNC16(layout, max_width * PANGO_SCALE);
    FUNC17(layout, PANGO_WRAP_CHAR);
    FUNC12(layout, PANGO_ELLIPSIZE_END);

    if (pango_markup)
        FUNC14(layout, text, text_len);
    else
        FUNC15(layout, text, text_len);

    /* Do the drawing */
    FUNC3(cr, CAIRO_OPERATOR_SOURCE);
    FUNC4(cr, pango_font_red, pango_font_green, pango_font_blue, pango_font_alpha);
    FUNC10(cr, layout);
    FUNC11(layout, NULL, &height);
    /* Center the piece of text vertically. */
    int yoffset = (height - savedFont->height) / 2;
    FUNC2(cr, x, y - yoffset);
    FUNC9(cr, layout);

    /* Free resources */
    FUNC8(layout);
    FUNC1(cr);
    FUNC5(surface);
}