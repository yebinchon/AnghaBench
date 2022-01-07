
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long version; long long stop_signal; long long cont_signal; } ;
typedef TYPE_1__ i3bar_child ;





 int current_key ;

__attribute__((used)) static int header_integer(void *ctx, long long val) {
    i3bar_child *child = ctx;

    switch (current_key) {
        case 128:
            child->version = val;
            break;
        case 129:
            child->stop_signal = val;
            break;
        case 130:
            child->cont_signal = val;
            break;
        default:
            break;
    }

    return 1;
}
