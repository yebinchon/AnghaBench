#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_10__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
struct TYPE_11__ {scalar_t__ bytes_after; scalar_t__ type; int /*<<< orphan*/  atom; } ;
typedef  TYPE_2__ xcb_intern_atom_reply_t ;
typedef  int /*<<< orphan*/  xcb_intern_atom_cookie_t ;
typedef  TYPE_2__ xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 scalar_t__ XCB_ATOM_CARDINAL ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 scalar_t__ FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

char *FUNC14(const char *atomname, xcb_connection_t *provided_conn, int screen) {
    xcb_intern_atom_cookie_t atom_cookie;
    xcb_intern_atom_reply_t *atom_reply;
    char *content = NULL;
    size_t content_max_words = 256;
    xcb_connection_t *conn = provided_conn;

    if (provided_conn == NULL &&
        ((conn = FUNC5(NULL, &screen)) == NULL ||
         FUNC6(conn))) {
        return NULL;
    }

    atom_cookie = FUNC12(conn, 0, FUNC3(atomname), atomname);

    xcb_screen_t *root_screen = FUNC4(conn, screen);
    xcb_window_t root = root_screen->root;

    atom_reply = FUNC13(conn, atom_cookie, NULL);
    if (atom_reply == NULL) {
        goto out_conn;
    }

    xcb_get_property_cookie_t prop_cookie;
    xcb_get_property_reply_t *prop_reply;
    prop_cookie = FUNC9(conn, false, root, atom_reply->atom,
                                             XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
    prop_reply = FUNC8(conn, prop_cookie, NULL);
    if (prop_reply == NULL) {
        goto out_atom;
    }
    if (FUNC11(prop_reply) > 0 && prop_reply->bytes_after > 0) {
        /* We received an incomplete value. Ask again but with a properly
         * adjusted size. */
        content_max_words += FUNC0(prop_reply->bytes_after / 4.0);
        /* Repeat the request, with adjusted size */
        FUNC1(prop_reply);
        prop_cookie = FUNC9(conn, false, root, atom_reply->atom,
                                                 XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
        prop_reply = FUNC8(conn, prop_cookie, NULL);
        if (prop_reply == NULL) {
            goto out_atom;
        }
    }
    if (FUNC11(prop_reply) == 0) {
        goto out;
    }
    if (prop_reply->type == XCB_ATOM_CARDINAL) {
        /* We treat a CARDINAL as a >= 32-bit unsigned int. The only CARDINAL
         * we query is I3_PID, which is 32-bit. */
        FUNC2(&content, "%u", *((unsigned int *)FUNC10(prop_reply)));
    } else {
        FUNC2(&content, "%.*s", FUNC11(prop_reply),
                  (char *)FUNC10(prop_reply));
    }

out:
    FUNC1(prop_reply);
out_atom:
    FUNC1(atom_reply);
out_conn:
    if (provided_conn == NULL)
        FUNC7(conn);
    return content;
}