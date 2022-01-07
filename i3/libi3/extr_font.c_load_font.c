
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xcb_void_cookie_t ;
typedef int xcb_query_font_cookie_t ;
struct TYPE_14__ {char const* error_code; } ;
typedef TYPE_3__ xcb_generic_error_t ;
struct TYPE_12__ {TYPE_6__* info; int * table; int id; } ;
struct TYPE_13__ {TYPE_1__ xcb; } ;
struct TYPE_15__ {int type; TYPE_2__ specific; scalar_t__ height; int * pattern; } ;
typedef TYPE_4__ i3Font ;
struct TYPE_16__ {scalar_t__ font_descent; scalar_t__ font_ascent; } ;


 int ELOG (char*,...) ;
 int EXIT_FAILURE ;
 int FONT_TYPE_NONE ;
 int FONT_TYPE_XCB ;
 int LOG (char*,char const*) ;
 int * conn ;
 int errx (int ,char*,char const*) ;
 int free (TYPE_3__*) ;
 int free_font () ;
 scalar_t__ load_pango_font (TYPE_4__*,char const*) ;
 void* sstrdup (char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 int xcb_generate_id (int *) ;
 int xcb_open_font_checked (int *,int ,int,char const*) ;
 int xcb_query_font (int *,int ) ;
 int * xcb_query_font_char_infos (TYPE_6__*) ;
 scalar_t__ xcb_query_font_char_infos_length (TYPE_6__*) ;
 TYPE_6__* xcb_query_font_reply (int *,int ,int *) ;
 TYPE_3__* xcb_request_check (int *,int ) ;

i3Font load_font(const char *pattern, const bool fallback) {

    free_font();

    i3Font font;
    font.type = FONT_TYPE_NONE;
    font.pattern = ((void*)0);



    if (conn == ((void*)0)) {
        return font;
    }


    if (strlen(pattern) > strlen("pango:") && !strncmp(pattern, "pango:", strlen("pango:"))) {
        const char *font_pattern = pattern + strlen("pango:");
        if (load_pango_font(&font, font_pattern)) {
            font.pattern = sstrdup(pattern);
            return font;
        }
    } else if (strlen(pattern) > strlen("xft:") && !strncmp(pattern, "xft:", strlen("xft:"))) {
        const char *font_pattern = pattern + strlen("xft:");
        if (load_pango_font(&font, font_pattern)) {
            font.pattern = sstrdup(pattern);
            return font;
        }
    }


    font.specific.xcb.id = xcb_generate_id(conn);
    xcb_void_cookie_t font_cookie = xcb_open_font_checked(conn, font.specific.xcb.id,
                                                          strlen(pattern), pattern);
    xcb_query_font_cookie_t info_cookie = xcb_query_font(conn, font.specific.xcb.id);


    xcb_generic_error_t *error;
    error = xcb_request_check(conn, font_cookie);


    if (fallback && error != ((void*)0)) {
        ELOG("Could not open font %s (X error %d). Trying fallback to 'fixed'.\n",
             pattern, error->error_code);
        pattern = "fixed";
        font_cookie = xcb_open_font_checked(conn, font.specific.xcb.id,
                                            strlen(pattern), pattern);
        info_cookie = xcb_query_font(conn, font.specific.xcb.id);


        free(error);
        error = xcb_request_check(conn, font_cookie);


        if (error != ((void*)0)) {
            ELOG("Could not open fallback font 'fixed', trying with '-misc-*'.\n");
            pattern = "-misc-*";
            font_cookie = xcb_open_font_checked(conn, font.specific.xcb.id,
                                                strlen(pattern), pattern);
            info_cookie = xcb_query_font(conn, font.specific.xcb.id);

            free(error);
            if ((error = xcb_request_check(conn, font_cookie)) != ((void*)0))
                errx(EXIT_FAILURE, "Could open neither requested font nor fallbacks "
                                   "(fixed or -misc-*): X11 error %d",
                     error->error_code);
        }
    }
    free(error);

    font.pattern = sstrdup(pattern);
    LOG("Using X font %s\n", pattern);


    if (!(font.specific.xcb.info = xcb_query_font_reply(conn, info_cookie, ((void*)0))))
        errx(EXIT_FAILURE, "Could not load font \"%s\"", pattern);


    if (xcb_query_font_char_infos_length(font.specific.xcb.info) == 0)
        font.specific.xcb.table = ((void*)0);
    else
        font.specific.xcb.table = xcb_query_font_char_infos(font.specific.xcb.info);


    font.height = font.specific.xcb.info->font_ascent + font.specific.xcb.info->font_descent;


    font.type = FONT_TYPE_XCB;
    return font;
}
