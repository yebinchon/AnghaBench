
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_query_tree_reply_t ;
typedef int xcb_get_window_attributes_cookie_t ;


 int conn ;
 int free (int *) ;
 int manage_window (int ,int ,int) ;
 int * smalloc (int) ;
 int xcb_get_window_attributes (int ,int ) ;
 int xcb_query_tree (int ,int ) ;
 int * xcb_query_tree_children (int *) ;
 int xcb_query_tree_children_length (int *) ;
 int * xcb_query_tree_reply (int ,int ,int ) ;

void manage_existing_windows(xcb_window_t root) {
    xcb_query_tree_reply_t *reply;
    int i, len;
    xcb_window_t *children;
    xcb_get_window_attributes_cookie_t *cookies;


    if ((reply = xcb_query_tree_reply(conn, xcb_query_tree(conn, root), 0)) == ((void*)0))
        return;

    len = xcb_query_tree_children_length(reply);
    cookies = smalloc(len * sizeof(*cookies));


    children = xcb_query_tree_children(reply);
    for (i = 0; i < len; ++i)
        cookies[i] = xcb_get_window_attributes(conn, children[i]);


    for (i = 0; i < len; ++i)
        manage_window(children[i], cookies[i], 1);

    free(reply);
    free(cookies);
}
