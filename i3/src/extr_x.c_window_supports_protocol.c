
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_4__ {size_t atoms_len; scalar_t__* atoms; } ;
typedef TYPE_1__ xcb_icccm_get_wm_protocols_reply_t ;
typedef int xcb_get_property_cookie_t ;
typedef scalar_t__ xcb_atom_t ;
typedef size_t uint32_t ;


 int A_WM_PROTOCOLS ;
 int conn ;
 int xcb_icccm_get_wm_protocols (int ,int ,int ) ;
 int xcb_icccm_get_wm_protocols_reply (int ,int ,TYPE_1__*,int *) ;
 int xcb_icccm_get_wm_protocols_reply_wipe (TYPE_1__*) ;

bool window_supports_protocol(xcb_window_t window, xcb_atom_t atom) {
    xcb_get_property_cookie_t cookie;
    xcb_icccm_get_wm_protocols_reply_t protocols;
    bool result = 0;

    cookie = xcb_icccm_get_wm_protocols(conn, window, A_WM_PROTOCOLS);
    if (xcb_icccm_get_wm_protocols_reply(conn, cookie, &protocols, ((void*)0)) != 1)
        return 0;


    for (uint32_t i = 0; i < protocols.atoms_len; i++)
        if (protocols.atoms[i] == atom)
            result = 1;

    xcb_icccm_get_wm_protocols_reply_wipe(&protocols);

    return result;
}
