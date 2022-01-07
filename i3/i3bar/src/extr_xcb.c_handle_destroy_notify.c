
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int window; int event; } ;
typedef TYPE_1__ xcb_destroy_notify_event_t ;
struct TYPE_10__ {int class_instance; int class_class; } ;
typedef TYPE_2__ trayclient ;
struct TYPE_11__ {int trayclients; } ;
typedef TYPE_3__ i3_output ;


 int DLOG (char*,...) ;
 int FREE (TYPE_2__*) ;
 int TAILQ_REMOVE (int ,TYPE_2__*,int ) ;
 int configure_trayclients () ;
 int draw_bars (int) ;
 int free (int ) ;
 int tailq ;
 TYPE_2__* trayclient_and_output_from_window (int ,TYPE_3__**) ;

__attribute__((used)) static void handle_destroy_notify(xcb_destroy_notify_event_t *event) {
    DLOG("DestroyNotify for window = %08x, event = %08x\n", event->window, event->event);

    i3_output *output;
    trayclient *client = trayclient_and_output_from_window(event->window, &output);
    if (!client) {
        DLOG("WARNING: Could not find corresponding tray window.\n");
        return;
    }

    DLOG("Removing tray client with window ID %08x\n", event->window);
    TAILQ_REMOVE(output->trayclients, client, tailq);
    free(client->class_class);
    free(client->class_instance);
    FREE(client);


    configure_trayclients();
    draw_bars(0);
}
