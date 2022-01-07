
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xcb_keysym_t ;
struct TYPE_4__ {int detail; int state; } ;
typedef TYPE_1__ xcb_key_release_event_t ;
typedef int xcb_connection_t ;


 scalar_t__ XK_Mode_switch ;
 int modeswitch_active ;
 int printf (char*,...) ;
 int symbols ;
 scalar_t__ xcb_key_press_lookup_keysym (int ,TYPE_1__*,int) ;

__attribute__((used)) static int handle_key_release(void *ignored, xcb_connection_t *conn, xcb_key_release_event_t *event) {
    printf("releasing %d, state raw = %d\n", event->detail, event->state);

    xcb_keysym_t sym = xcb_key_press_lookup_keysym(symbols, event, event->state);
    if (sym == XK_Mode_switch) {
        printf("Mode switch disabled\n");
        modeswitch_active = 0;
    }

    return 1;
}
