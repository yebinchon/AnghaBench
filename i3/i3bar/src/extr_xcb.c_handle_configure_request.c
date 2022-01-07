
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ xcb_configure_request_event_t ;


 int DLOG (char*,int ) ;
 int handle_configuration_change (int ) ;

__attribute__((used)) static void handle_configure_request(xcb_configure_request_event_t *event) {
    DLOG("ConfigureRequest for window = %08x\n", event->window);
    handle_configuration_change(event->window);
}
