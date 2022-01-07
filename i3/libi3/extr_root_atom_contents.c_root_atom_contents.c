
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_10__ {int root; } ;
typedef TYPE_1__ xcb_screen_t ;
struct TYPE_11__ {scalar_t__ bytes_after; scalar_t__ type; int atom; } ;
typedef TYPE_2__ xcb_intern_atom_reply_t ;
typedef int xcb_intern_atom_cookie_t ;
typedef TYPE_2__ xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
typedef int xcb_connection_t ;


 scalar_t__ XCB_ATOM_CARDINAL ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 scalar_t__ ceil (double) ;
 int free (TYPE_2__*) ;
 int sasprintf (char**,char*,unsigned int,...) ;
 int strlen (char const*) ;
 TYPE_1__* xcb_aux_get_screen (int *,int) ;
 int * xcb_connect (int *,int*) ;
 scalar_t__ xcb_connection_has_error (int *) ;
 int xcb_disconnect (int *) ;
 TYPE_2__* xcb_get_property_reply (int *,int ,int *) ;
 int xcb_get_property_unchecked (int *,int,int ,int ,int ,int ,size_t) ;
 scalar_t__ xcb_get_property_value (TYPE_2__*) ;
 int xcb_get_property_value_length (TYPE_2__*) ;
 int xcb_intern_atom (int *,int ,int ,char const*) ;
 TYPE_2__* xcb_intern_atom_reply (int *,int ,int *) ;

char *root_atom_contents(const char *atomname, xcb_connection_t *provided_conn, int screen) {
    xcb_intern_atom_cookie_t atom_cookie;
    xcb_intern_atom_reply_t *atom_reply;
    char *content = ((void*)0);
    size_t content_max_words = 256;
    xcb_connection_t *conn = provided_conn;

    if (provided_conn == ((void*)0) &&
        ((conn = xcb_connect(((void*)0), &screen)) == ((void*)0) ||
         xcb_connection_has_error(conn))) {
        return ((void*)0);
    }

    atom_cookie = xcb_intern_atom(conn, 0, strlen(atomname), atomname);

    xcb_screen_t *root_screen = xcb_aux_get_screen(conn, screen);
    xcb_window_t root = root_screen->root;

    atom_reply = xcb_intern_atom_reply(conn, atom_cookie, ((void*)0));
    if (atom_reply == ((void*)0)) {
        goto out_conn;
    }

    xcb_get_property_cookie_t prop_cookie;
    xcb_get_property_reply_t *prop_reply;
    prop_cookie = xcb_get_property_unchecked(conn, 0, root, atom_reply->atom,
                                             XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
    prop_reply = xcb_get_property_reply(conn, prop_cookie, ((void*)0));
    if (prop_reply == ((void*)0)) {
        goto out_atom;
    }
    if (xcb_get_property_value_length(prop_reply) > 0 && prop_reply->bytes_after > 0) {


        content_max_words += ceil(prop_reply->bytes_after / 4.0);

        free(prop_reply);
        prop_cookie = xcb_get_property_unchecked(conn, 0, root, atom_reply->atom,
                                                 XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
        prop_reply = xcb_get_property_reply(conn, prop_cookie, ((void*)0));
        if (prop_reply == ((void*)0)) {
            goto out_atom;
        }
    }
    if (xcb_get_property_value_length(prop_reply) == 0) {
        goto out;
    }
    if (prop_reply->type == XCB_ATOM_CARDINAL) {


        sasprintf(&content, "%u", *((unsigned int *)xcb_get_property_value(prop_reply)));
    } else {
        sasprintf(&content, "%.*s", xcb_get_property_value_length(prop_reply),
                  (char *)xcb_get_property_value(prop_reply));
    }

out:
    free(prop_reply);
out_atom:
    free(atom_reply);
out_conn:
    if (provided_conn == ((void*)0))
        xcb_disconnect(conn);
    return content;
}
