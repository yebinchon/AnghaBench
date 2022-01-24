#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_void_cookie_t ;
typedef  int /*<<< orphan*/  xcb_query_font_cookie_t ;
struct TYPE_14__ {char const* error_code; } ;
typedef  TYPE_3__ xcb_generic_error_t ;
struct TYPE_12__ {TYPE_6__* info; int /*<<< orphan*/ * table; int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_1__ xcb; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; TYPE_2__ specific; scalar_t__ height; int /*<<< orphan*/ * pattern; } ;
typedef  TYPE_4__ i3Font ;
struct TYPE_16__ {scalar_t__ font_descent; scalar_t__ font_ascent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FONT_TYPE_NONE ; 
 int /*<<< orphan*/  FONT_TYPE_XCB ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * conn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_4__*,char const*) ; 
 void* FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 TYPE_6__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

i3Font FUNC16(const char *pattern, const bool fallback) {
    /* if any font was previously loaded, free it now */
    FUNC4();

    i3Font font;
    font.type = FONT_TYPE_NONE;
    font.pattern = NULL;

    /* No XCB connction, return early because we're just validating the
     * configuration file. */
    if (conn == NULL) {
        return font;
    }

    /* Try to load a pango font if specified */
    if (FUNC7(pattern) > FUNC7("pango:") && !FUNC8(pattern, "pango:", FUNC7("pango:"))) {
        const char *font_pattern = pattern + FUNC7("pango:");
        if (FUNC5(&font, font_pattern)) {
            font.pattern = FUNC6(pattern);
            return font;
        }
    } else if (FUNC7(pattern) > FUNC7("xft:") && !FUNC8(pattern, "xft:", FUNC7("xft:"))) {
        const char *font_pattern = pattern + FUNC7("xft:");
        if (FUNC5(&font, font_pattern)) {
            font.pattern = FUNC6(pattern);
            return font;
        }
    }

    /* Send all our requests first */
    font.specific.xcb.id = FUNC9(conn);
    xcb_void_cookie_t font_cookie = FUNC10(conn, font.specific.xcb.id,
                                                          FUNC7(pattern), pattern);
    xcb_query_font_cookie_t info_cookie = FUNC11(conn, font.specific.xcb.id);

    /* Check for errors. If errors, fall back to default font. */
    xcb_generic_error_t *error;
    error = FUNC15(conn, font_cookie);

    /* If we fail to open font, fall back to 'fixed' */
    if (fallback && error != NULL) {
        FUNC0("Could not open font %s (X error %d). Trying fallback to 'fixed'.\n",
             pattern, error->error_code);
        pattern = "fixed";
        font_cookie = FUNC10(conn, font.specific.xcb.id,
                                            FUNC7(pattern), pattern);
        info_cookie = FUNC11(conn, font.specific.xcb.id);

        /* Check if we managed to open 'fixed' */
        FUNC3(error);
        error = FUNC15(conn, font_cookie);

        /* Fall back to '-misc-*' if opening 'fixed' fails. */
        if (error != NULL) {
            FUNC0("Could not open fallback font 'fixed', trying with '-misc-*'.\n");
            pattern = "-misc-*";
            font_cookie = FUNC10(conn, font.specific.xcb.id,
                                                FUNC7(pattern), pattern);
            info_cookie = FUNC11(conn, font.specific.xcb.id);

            FUNC3(error);
            if ((error = FUNC15(conn, font_cookie)) != NULL)
                FUNC2(EXIT_FAILURE, "Could open neither requested font nor fallbacks "
                                   "(fixed or -misc-*): X11 error %d",
                     error->error_code);
        }
    }
    FUNC3(error);

    font.pattern = FUNC6(pattern);
    FUNC1("Using X font %s\n", pattern);

    /* Get information (height/name) for this font */
    if (!(font.specific.xcb.info = FUNC14(conn, info_cookie, NULL)))
        FUNC2(EXIT_FAILURE, "Could not load font \"%s\"", pattern);

    /* Get the font table, if possible */
    if (FUNC13(font.specific.xcb.info) == 0)
        font.specific.xcb.table = NULL;
    else
        font.specific.xcb.table = FUNC12(font.specific.xcb.info);

    /* Calculate the font height */
    font.height = font.specific.xcb.info->font_ascent + font.specific.xcb.info->font_descent;

    /* Set the font type and return successfully */
    font.type = FONT_TYPE_XCB;
    return font;
}