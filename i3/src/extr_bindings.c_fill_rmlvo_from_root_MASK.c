#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ bytes_after; int /*<<< orphan*/  atom; } ;
typedef  TYPE_1__ xcb_intern_atom_reply_t ;
typedef  TYPE_1__ xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
struct xkb_rule_names {int /*<<< orphan*/  options; int /*<<< orphan*/  variant; int /*<<< orphan*/  layout; int /*<<< orphan*/  model; int /*<<< orphan*/  rules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int const,char const*) ; 
 int /*<<< orphan*/  XCB_GET_PROPERTY_TYPE_ANY ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int const,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct xkb_rule_names *xkb_names) {
    xcb_intern_atom_reply_t *atom_reply;
    size_t content_max_words = 256;

    atom_reply = FUNC11(
        conn, FUNC10(conn, 0, FUNC4("_XKB_RULES_NAMES"), "_XKB_RULES_NAMES"), NULL);
    if (atom_reply == NULL)
        return -1;

    xcb_get_property_cookie_t prop_cookie;
    xcb_get_property_reply_t *prop_reply;
    prop_cookie = FUNC7(conn, false, root, atom_reply->atom,
                                             XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
    prop_reply = FUNC6(conn, prop_cookie, NULL);
    if (prop_reply == NULL) {
        FUNC2(atom_reply);
        return -1;
    }
    if (FUNC9(prop_reply) > 0 && prop_reply->bytes_after > 0) {
        /* We received an incomplete value. Ask again but with a properly
         * adjusted size. */
        content_max_words += FUNC1(prop_reply->bytes_after / 4.0);
        /* Repeat the request, with adjusted size */
        FUNC2(prop_reply);
        prop_cookie = FUNC7(conn, false, root, atom_reply->atom,
                                                 XCB_GET_PROPERTY_TYPE_ANY, 0, content_max_words);
        prop_reply = FUNC6(conn, prop_cookie, NULL);
        if (prop_reply == NULL) {
            FUNC2(atom_reply);
            return -1;
        }
    }
    if (FUNC9(prop_reply) == 0) {
        FUNC2(atom_reply);
        FUNC2(prop_reply);
        return -1;
    }

    const char *walk = (const char *)FUNC8(prop_reply);
    int remaining = FUNC9(prop_reply);
    for (int i = 0; i < 5 && remaining > 0; i++) {
        const int len = FUNC5(walk, remaining);
        switch (i) {
            case 0:
                FUNC3((char **)&(xkb_names->rules), "%.*s", len, walk);
                break;
            case 1:
                FUNC3((char **)&(xkb_names->model), "%.*s", len, walk);
                break;
            case 2:
                FUNC3((char **)&(xkb_names->layout), "%.*s", len, walk);
                break;
            case 3:
                FUNC3((char **)&(xkb_names->variant), "%.*s", len, walk);
                break;
            case 4:
                FUNC3((char **)&(xkb_names->options), "%.*s", len, walk);
                break;
        }
        FUNC0("component %d of _XKB_RULES_NAMES is \"%.*s\"\n", i, len, walk);
        walk += (len + 1);
        remaining -= (len + 1);
    }

    FUNC2(atom_reply);
    FUNC2(prop_reply);
    return 0;
}