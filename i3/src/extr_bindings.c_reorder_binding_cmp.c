
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event_state_mask; } ;
typedef TYPE_1__ Binding ;



__attribute__((used)) static int reorder_binding_cmp(const void *a, const void *b) {
    Binding *first = *((Binding **)a);
    Binding *second = *((Binding **)b);
    if (first->event_state_mask < second->event_state_mask) {
        return 1;
    } else if (first->event_state_mask == second->event_state_mask) {
        return 0;
    } else {
        return -1;
    }
}
