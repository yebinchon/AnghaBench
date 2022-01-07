
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int not_empty; } ;
struct TYPE_3__ {int fd; } ;


 int allocate_holder () ;
 int broadcast_holder (int ,char*,int ) ;
 int free (char*) ;
 int free_holder (int *) ;
 TYPE_2__ gdns_thread ;
 char* get_json (int ,int ,int ) ;
 int glog ;
 TYPE_1__* gwswriter ;
 int holder ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlen (char*) ;

__attribute__((used)) static void
tail_html (void)
{
  char *json = ((void*)0);

  pthread_mutex_lock (&gdns_thread.mutex);
  free_holder (&holder);
  pthread_cond_broadcast (&gdns_thread.not_empty);
  pthread_mutex_unlock (&gdns_thread.mutex);

  allocate_holder ();

  pthread_mutex_lock (&gdns_thread.mutex);
  json = get_json (glog, holder, 0);
  pthread_mutex_unlock (&gdns_thread.mutex);

  if (json == ((void*)0))
    return;

  broadcast_holder (gwswriter->fd, json, strlen (json));
  free (json);
}
