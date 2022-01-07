
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sh_old_max; int* ev_signal_pair; int ** sh_old; int ev_signal; scalar_t__ ev_signal_added; } ;
struct event_base {TYPE_1__ sig; } ;


 int EVSIGBASE_LOCK () ;
 int EVSIGBASE_UNLOCK () ;
 int NSIG ;
 int event_debug_unassign (int *) ;
 int event_del (int *) ;
 struct event_base* evsig_base ;
 int evsig_base_fd ;
 scalar_t__ evsig_base_n_signals_added ;
 int evsig_restore_handler_ (struct event_base*,int) ;
 int evutil_closesocket (int) ;
 int mm_free (int **) ;

void
evsig_dealloc_(struct event_base *base)
{
 int i = 0;
 if (base->sig.ev_signal_added) {
  event_del(&base->sig.ev_signal);
  base->sig.ev_signal_added = 0;
 }


 event_debug_unassign(&base->sig.ev_signal);

 for (i = 0; i < NSIG; ++i) {
  if (i < base->sig.sh_old_max && base->sig.sh_old[i] != ((void*)0))
   evsig_restore_handler_(base, i);
 }
 EVSIGBASE_LOCK();
 if (base == evsig_base) {
  evsig_base = ((void*)0);
  evsig_base_n_signals_added = 0;
  evsig_base_fd = -1;
 }
 EVSIGBASE_UNLOCK();

 if (base->sig.ev_signal_pair[0] != -1) {
  evutil_closesocket(base->sig.ev_signal_pair[0]);
  base->sig.ev_signal_pair[0] = -1;
 }
 if (base->sig.ev_signal_pair[1] != -1) {
  evutil_closesocket(base->sig.ev_signal_pair[1]);
  base->sig.ev_signal_pair[1] = -1;
 }
 base->sig.sh_old_max = 0;


 if (base->sig.sh_old) {
  mm_free(base->sig.sh_old);
  base->sig.sh_old = ((void*)0);
 }
}
