
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_3__ {int mutex; int fd; } ;


 int free (char*) ;
 TYPE_2__ gdns_thread ;
 char* get_json (int ,int ,int ) ;
 int glog ;
 TYPE_1__* gwswriter ;
 int holder ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_holder_to_client (int ,int,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
fast_forward_client (int listener)
{
  char *json = ((void*)0);

  pthread_mutex_lock (&gdns_thread.mutex);
  json = get_json (glog, holder, 0);
  pthread_mutex_unlock (&gdns_thread.mutex);

  if (json == ((void*)0))
    return;

  pthread_mutex_lock (&gwswriter->mutex);
  send_holder_to_client (gwswriter->fd, listener, json, strlen (json));
  pthread_mutex_unlock (&gwswriter->mutex);
  free (json);
}
