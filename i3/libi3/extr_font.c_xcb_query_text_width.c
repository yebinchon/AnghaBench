
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int error_code; int overall_width; } ;
typedef TYPE_5__ xcb_query_text_extents_reply_t ;
typedef int xcb_query_text_extents_cookie_t ;
typedef TYPE_5__ xcb_generic_error_t ;
typedef int xcb_char2b_t ;
struct TYPE_13__ {TYPE_2__* info; int id; } ;
struct TYPE_14__ {TYPE_3__ xcb; } ;
struct TYPE_16__ {TYPE_4__ specific; } ;
struct TYPE_11__ {size_t character_width; } ;
struct TYPE_12__ {TYPE_1__ max_bounds; } ;


 int conn ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_5__*) ;
 TYPE_9__* savedFont ;
 int stderr ;
 int xcb_query_text_extents (int ,int ,size_t,int *) ;
 TYPE_5__* xcb_query_text_extents_reply (int ,int ,TYPE_5__**) ;

__attribute__((used)) static int xcb_query_text_width(const xcb_char2b_t *text, size_t text_len) {

    static bool first_invocation = 1;
    if (first_invocation) {
        fprintf(stderr, "Using slow code path for text extents\n");
        first_invocation = 0;
    }


    xcb_generic_error_t *error;
    xcb_query_text_extents_cookie_t cookie = xcb_query_text_extents(conn,
                                                                    savedFont->specific.xcb.id, text_len, (xcb_char2b_t *)text);
    xcb_query_text_extents_reply_t *reply = xcb_query_text_extents_reply(conn,
                                                                         cookie, &error);
    if (reply == ((void*)0)) {


        fprintf(stderr, "Could not get text extents (X error code %d)\n",
                error->error_code);
        free(error);
        return savedFont->specific.xcb.info->max_bounds.character_width * text_len;
    }

    int width = reply->overall_width;
    free(reply);
    return width;
}
