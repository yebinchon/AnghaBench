
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char xcb_keysym_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ xcb_key_press_event_t ;
typedef int uint16_t ;


 int DLOG (char*) ;
 int backtrace_done ;
 int i3_restart (int) ;
 int keysyms ;
 int sighandler_backtrace () ;
 int sighandler_destroy_dialogs () ;
 int sighandler_handle_expose () ;
 char xcb_key_press_lookup_keysym (int ,TYPE_1__*,int ) ;
 int xcb_numlock_mask ;

__attribute__((used)) static void sighandler_handle_key_press(xcb_key_press_event_t *event) {
    uint16_t state = event->state;




    state &= ~xcb_numlock_mask;

    xcb_keysym_t sym = xcb_key_press_lookup_keysym(keysyms, event, state);

    if (sym == 'b') {
        DLOG("User issued core-dump command.\n");



        backtrace_done = sighandler_backtrace();
        sighandler_handle_expose();
    } else if (sym == 'r') {
        sighandler_destroy_dialogs();
        i3_restart(0);
    } else if (sym == 'f') {
        sighandler_destroy_dialogs();
        i3_restart(1);
    }
}
