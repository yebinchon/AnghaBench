
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_connection_t ;
struct TYPE_3__ {int event_x; int event_y; } ;
typedef TYPE_1__ xcb_button_press_event_t ;


 int printf (char*,int,int) ;

__attribute__((used)) static void handle_button_press(xcb_connection_t *conn, xcb_button_press_event_t *event) {
    printf("button pressed on x = %d, y = %d\n",
           event->event_x, event->event_y);

}
