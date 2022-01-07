
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int not_empty; } ;


 int allocate_data () ;
 int allocate_holder () ;
 int dash ;
 int free_dashboard (int ) ;
 int free_holder (int *) ;
 TYPE_1__ gdns_thread ;
 int holder ;
 int main_win ;
 int main_win_height ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int render_screens () ;
 int term_size (int ,int *) ;

__attribute__((used)) static void
tail_term (void)
{
  pthread_mutex_lock (&gdns_thread.mutex);
  free_holder (&holder);
  pthread_cond_broadcast (&gdns_thread.not_empty);
  pthread_mutex_unlock (&gdns_thread.mutex);

  free_dashboard (dash);
  allocate_holder ();
  allocate_data ();

  term_size (main_win, &main_win_height);
  render_screens ();
}
