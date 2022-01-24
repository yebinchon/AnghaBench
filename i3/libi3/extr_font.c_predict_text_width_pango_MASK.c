#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int gint ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_6__ {int /*<<< orphan*/  root; } ;
struct TYPE_4__ {int /*<<< orphan*/  pango_desc; } ;
struct TYPE_5__ {TYPE_1__ specific; } ;
typedef  int /*<<< orphan*/  PangoLayout ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,size_t) ; 
 TYPE_3__* root_screen ; 
 int /*<<< orphan*/  root_visual_type ; 
 TYPE_2__* savedFont ; 

__attribute__((used)) static int FUNC11(const char *text, size_t text_len, bool pango_markup) {
    /* Create a dummy Pango layout */
    /* root_visual_type is cached in load_pango_font */
    cairo_surface_t *surface = FUNC3(conn, root_screen->root, root_visual_type, 1, 1);
    cairo_t *cr = FUNC0(surface);
    PangoLayout *layout = FUNC4(cr);

    /* Get the font width */
    gint width;
    FUNC8(layout, savedFont->specific.pango_desc);

    if (pango_markup)
        FUNC9(layout, text, text_len);
    else
        FUNC10(layout, text, text_len);

    FUNC6(cr, layout);
    FUNC7(layout, &width, NULL);

    /* Free resources */
    FUNC5(layout);
    FUNC1(cr);
    FUNC2(surface);

    return width;
}