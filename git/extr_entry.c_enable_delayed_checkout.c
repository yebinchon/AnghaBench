
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct checkout {TYPE_1__* delayed_checkout; } ;
struct TYPE_2__ {int paths; int filters; int state; } ;


 int CE_CAN_DELAY ;
 int string_list_init (int *,int ) ;
 TYPE_1__* xmalloc (int) ;

void enable_delayed_checkout(struct checkout *state)
{
 if (!state->delayed_checkout) {
  state->delayed_checkout = xmalloc(sizeof(*state->delayed_checkout));
  state->delayed_checkout->state = CE_CAN_DELAY;
  string_list_init(&state->delayed_checkout->filters, 0);
  string_list_init(&state->delayed_checkout->paths, 0);
 }
}
