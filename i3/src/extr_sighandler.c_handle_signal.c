
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xcb_key_press_event_t ;
struct TYPE_5__ {int response_type; } ;
typedef TYPE_1__ xcb_generic_event_t ;
struct TYPE_6__ {int count; } ;
typedef TYPE_2__ xcb_expose_event_t ;
struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int siginfo_t ;


 int DLOG (char*,int) ;
 int SIG_DFL ;


 int conn ;
 int free (TYPE_1__*) ;
 int raised_signal ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int sighandler_create_dialogs () ;
 int sighandler_handle_expose () ;
 int sighandler_handle_key_press (int *) ;
 int sighandler_setup () ;
 TYPE_1__* xcb_wait_for_event (int ) ;

__attribute__((used)) static void handle_signal(int sig, siginfo_t *info, void *data) {
    DLOG("i3 crashed. SIG: %d\n", sig);

    struct sigaction action;
    action.sa_handler = SIG_DFL;
    action.sa_flags = 0;
    sigemptyset(&action.sa_mask);
    sigaction(sig, &action, ((void*)0));
    raised_signal = sig;

    sighandler_setup();
    sighandler_create_dialogs();

    xcb_generic_event_t *event;

    while ((event = xcb_wait_for_event(conn))) {

        int type = (event->response_type & 0x7F);
        switch (type) {
            case 128:
                sighandler_handle_key_press((xcb_key_press_event_t *)event);
                break;
            case 129:
                if (((xcb_expose_event_t *)event)->count == 0) {
                    sighandler_handle_expose();
                }

                break;
        }

        free(event);
    }
}
