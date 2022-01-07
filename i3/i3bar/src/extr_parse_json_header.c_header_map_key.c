
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHECK_KEY (char*) ;
 int KEY_CLICK_EVENTS ;
 int KEY_CONT_SIGNAL ;
 int KEY_STOP_SIGNAL ;
 int KEY_VERSION ;
 int current_key ;

__attribute__((used)) static int header_map_key(void *ctx, const unsigned char *stringval, size_t stringlen) {
    if (CHECK_KEY("version")) {
        current_key = KEY_VERSION;
    } else if (CHECK_KEY("stop_signal")) {
        current_key = KEY_STOP_SIGNAL;
    } else if (CHECK_KEY("cont_signal")) {
        current_key = KEY_CONT_SIGNAL;
    } else if (CHECK_KEY("click_events")) {
        current_key = KEY_CLICK_EVENTS;
    }
    return 1;
}
