
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bytes_after; int atom; } ;
typedef TYPE_1__ xcb_intern_atom_reply_t ;
typedef TYPE_1__ xcb_get_property_reply_t ;
typedef int xcb_get_property_cookie_t ;
struct xkb_rule_names {int options; int variant; int layout; int model; int rules; } ;


 int DLOG (char*,int,int const,char const*) ;
 int XCB_GET_PROPERTY_TYPE_ANY ;
 scalar_t__ ceil (double) ;
 int conn ;
 int free (TYPE_1__*) ;
 int root ;
 int sasprintf (char**,char*,int const,char const*) ;
 int strlen (char*) ;
 int strnlen (char const*,int) ;
 TYPE_1__* xcb_get_property_reply (int ,int ,int *) ;
 int xcb_get_property_unchecked (int ,int,int ,int ,int ,int ,size_t) ;
 scalar_t__ xcb_get_property_value (TYPE_1__*) ;
 int xcb_get_property_value_length (TYPE_1__*) ;
 int xcb_intern_atom (int ,int ,int ,char*) ;
 TYPE_1__* xcb_intern_atom_reply (int ,int ,int *) ;

__attribute__((used)) static int fill_rmlvo_from_root(struct xkb_rule_names *xkb_names) {
    xcb_intern_atom_reply_t *atom_reply;
    size_t content_max_words = 256;

    atom_reply = xcb_intern_atom_reply(
        conn, xcb_intern_atom(conn, 0, strlen("_XKB_RULES_NAMES"), "_XKB_RULES_NAMES"), ((void*)0));
    if (atom_reply == ((void*)0))
        return -1;

    xcb_get_property_cookie_t prop_cookie;
    xcb_get_property_reply_t *prop_reply;
    prop_cookie = xcb_get_property_unchecked(conn, 0, root, atom_reply->atom,
                                             XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
    prop_reply = xcb_get_property_reply(conn, prop_cookie, ((void*)0));
    if (prop_reply == ((void*)0)) {
        free(atom_reply);
        return -1;
    }
    if (xcb_get_property_value_length(prop_reply) > 0 && prop_reply->bytes_after > 0) {


        content_max_words += ceil(prop_reply->bytes_after / 4.0);

        free(prop_reply);
        prop_cookie = xcb_get_property_unchecked(conn, 0, root, atom_reply->atom,
                                                 XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
        prop_reply = xcb_get_property_reply(conn, prop_cookie, ((void*)0));
        if (prop_reply == ((void*)0)) {
            free(atom_reply);
            return -1;
        }
    }
    if (xcb_get_property_value_length(prop_reply) == 0) {
        free(atom_reply);
        free(prop_reply);
        return -1;
    }

    const char *walk = (const char *)xcb_get_property_value(prop_reply);
    int remaining = xcb_get_property_value_length(prop_reply);
    for (int i = 0; i < 5 && remaining > 0; i++) {
        const int len = strnlen(walk, remaining);
        switch (i) {
            case 0:
                sasprintf((char **)&(xkb_names->rules), "%.*s", len, walk);
                break;
            case 1:
                sasprintf((char **)&(xkb_names->model), "%.*s", len, walk);
                break;
            case 2:
                sasprintf((char **)&(xkb_names->layout), "%.*s", len, walk);
                break;
            case 3:
                sasprintf((char **)&(xkb_names->variant), "%.*s", len, walk);
                break;
            case 4:
                sasprintf((char **)&(xkb_names->options), "%.*s", len, walk);
                break;
        }
        DLOG("component %d of _XKB_RULES_NAMES is \"%.*s\"\n", i, len, walk);
        walk += (len + 1);
        remaining -= (len + 1);
    }

    free(atom_reply);
    free(prop_reply);
    return 0;
}
