
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_state_change {int n_connections; int n_devices; } ;



__attribute__((used)) static unsigned int notifications_for_state_change(struct drbd_state_change *state_change)
{
 return 1 +
        state_change->n_connections +
        state_change->n_devices +
        state_change->n_devices * state_change->n_connections;
}
