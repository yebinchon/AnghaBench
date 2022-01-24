#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pango_desc; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; int /*<<< orphan*/  height; TYPE_1__ specific; } ;
typedef  TYPE_2__ i3Font ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_8__ {int /*<<< orphan*/  root; } ;
typedef  int /*<<< orphan*/  PangoLayout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FONT_TYPE_PANGO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int PANGO_SCALE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* root_screen ; 
 int /*<<< orphan*/  root_visual_type ; 

__attribute__((used)) static bool FUNC14(i3Font *font, const char *desc) {
    /* Load the font description */
    font->specific.pango_desc = FUNC9(desc);
    if (!font->specific.pango_desc) {
        FUNC0("Could not open font %s with Pango, fallback to X font.\n", desc);
        return false;
    }

    FUNC1("Using Pango font %s, size %d\n",
        FUNC10(font->specific.pango_desc),
        FUNC11(font->specific.pango_desc) / PANGO_SCALE);

    /* We cache root_visual_type here, since you must call
     * load_pango_font before any other pango function
     * that would need root_visual_type */
    root_visual_type = FUNC8(root_screen);

    /* Create a dummy Pango layout to compute the font height */
    cairo_surface_t *surface = FUNC5(conn, root_screen->root, root_visual_type, 1, 1);
    cairo_t *cr = FUNC2(surface);
    PangoLayout *layout = FUNC6(cr);
    FUNC13(layout, font->specific.pango_desc);

    /* Get the font height */
    gint height;
    FUNC12(layout, NULL, &height);
    font->height = height;

    /* Free resources */
    FUNC7(layout);
    FUNC3(cr);
    FUNC4(surface);

    /* Set the font type and return successfully */
    font->type = FONT_TYPE_PANGO;
    return true;
}