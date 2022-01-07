
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int not_empty; } ;
struct TYPE_3__ {size_t current; } ;


 int allocate_data () ;
 int allocate_holder () ;
 int dash ;
 int free_dashboard (int ) ;
 int free_holder (int *) ;
 TYPE_2__ gdns_thread ;
 TYPE_1__ gscroll ;
 int holder ;
 int load_sort_win (int ,size_t,int *) ;
 int main_win ;
 int * module_sort ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int render_screens () ;

__attribute__((used)) static void
render_sort_dialog (void)
{
  load_sort_win (main_win, gscroll.current, &module_sort[gscroll.current]);

  pthread_mutex_lock (&gdns_thread.mutex);
  free_holder (&holder);
  pthread_cond_broadcast (&gdns_thread.not_empty);
  pthread_mutex_unlock (&gdns_thread.mutex);

  free_dashboard (dash);
  allocate_holder ();
  allocate_data ();
  render_screens ();
}
