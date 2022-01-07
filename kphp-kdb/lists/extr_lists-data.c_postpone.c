
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lev_generic {int dummy; } ;
struct TYPE_2__ {int tot_lists; } ;


 TYPE_1__ Header ;
 int assert (int) ;
 int insert_postponed (int,struct lev_generic*,int ) ;
 int log_event_size (struct lev_generic*) ;

void postpone (int x, struct lev_generic *E) {
  assert (0 <= x && x < Header.tot_lists);
  insert_postponed (x, E, log_event_size (E));
}
