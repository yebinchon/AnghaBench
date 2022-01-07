
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_generic_event_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ xcb_expose_event_t ;
typedef int xcb_configure_notify_event_t ;


 int DLOG (char*,int) ;


 int configure_notify (int *) ;
 int expose_event (TYPE_1__*) ;

__attribute__((used)) static void restore_handle_event(int type, xcb_generic_event_t *event) {
    switch (type) {
        case 128:
            if (((xcb_expose_event_t *)event)->count == 0) {
                expose_event((xcb_expose_event_t *)event);
            }

            break;
        case 129:
            configure_notify((xcb_configure_notify_event_t *)event);
            break;
        default:
            DLOG("Received unhandled X11 event of type %d\n", type);
            break;
    }
}
