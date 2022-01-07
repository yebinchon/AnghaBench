
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ request; } ;
typedef TYPE_1__ xcb_mapping_notify_event_t ;


 int DLOG (char*) ;
 scalar_t__ XCB_MAPPING_KEYBOARD ;
 scalar_t__ XCB_MAPPING_MODIFIER ;
 int XCB_NUM_LOCK ;
 int aio_get_mod_mask_for (int ,int ) ;
 int conn ;
 int grab_all_keys (int ) ;
 int keysyms ;
 int translate_keysyms () ;
 int ungrab_all_keys (int ) ;
 int xcb_numlock_mask ;
 int xcb_refresh_keyboard_mapping (int ,TYPE_1__*) ;

__attribute__((used)) static void handle_mapping_notify(xcb_mapping_notify_event_t *event) {
    if (event->request != XCB_MAPPING_KEYBOARD &&
        event->request != XCB_MAPPING_MODIFIER)
        return;

    DLOG("Received mapping_notify for keyboard or modifier mapping, re-grabbing keys\n");
    xcb_refresh_keyboard_mapping(keysyms, event);

    xcb_numlock_mask = aio_get_mod_mask_for(XCB_NUM_LOCK, keysyms);

    ungrab_all_keys(conn);
    translate_keysyms();
    grab_all_keys(conn);
}
