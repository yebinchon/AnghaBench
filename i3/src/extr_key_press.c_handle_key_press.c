
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ response_type; int state; int detail; int time; } ;
typedef TYPE_1__ xcb_key_press_event_t ;
typedef int xcb_generic_event_t ;
typedef int CommandResult ;
typedef int Binding ;


 int DLOG (char*,char*,int ,int ) ;
 scalar_t__ XCB_KEY_RELEASE ;
 int command_result_free (int *) ;
 int * get_binding_from_xcb_event (int *) ;
 int last_timestamp ;
 int * run_binding (int *,int *) ;

void handle_key_press(xcb_key_press_event_t *event) {
    const bool key_release = (event->response_type == XCB_KEY_RELEASE);

    last_timestamp = event->time;

    DLOG("%s %d, state raw = 0x%x\n", (key_release ? "KeyRelease" : "KeyPress"), event->detail, event->state);

    Binding *bind = get_binding_from_xcb_event((xcb_generic_event_t *)event);


    if (bind == ((void*)0))
        return;

    CommandResult *result = run_binding(bind, ((void*)0));
    command_result_free(result);
}
