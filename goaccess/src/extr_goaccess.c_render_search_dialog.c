
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;


 int allocate_data () ;
 int dash ;
 int free_dashboard (int ) ;
 TYPE_1__ gdns_thread ;
 int gscroll ;
 int holder ;
 int main_win ;
 int perform_next_find (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ render_find_dialog (int ,int *) ;
 int render_screens () ;

__attribute__((used)) static void
render_search_dialog (int search)
{
  if (render_find_dialog (main_win, &gscroll))
    return;

  pthread_mutex_lock (&gdns_thread.mutex);
  search = perform_next_find (holder, &gscroll);
  pthread_mutex_unlock (&gdns_thread.mutex);
  if (search != 0)
    return;

  free_dashboard (dash);
  allocate_data ();
  render_screens ();
}
