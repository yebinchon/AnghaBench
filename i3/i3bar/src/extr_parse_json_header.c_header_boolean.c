
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int click_events; } ;
typedef TYPE_1__ i3bar_child ;



 int current_key ;

__attribute__((used)) static int header_boolean(void *ctx, int val) {
    i3bar_child *child = ctx;

    switch (current_key) {
        case 128:
            child->click_events = val;
            break;
        default:
            break;
    }

    return 1;
}
