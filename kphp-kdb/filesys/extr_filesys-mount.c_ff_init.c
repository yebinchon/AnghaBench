
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_conn_info {int dummy; } ;
typedef int pthread_attr_t ;


 int PTHREAD_CREATE_JOINABLE ;
 int ff_mutex ;
 int ff_server_thread ;
 scalar_t__ ff_start_server ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setstacksize (int *,int) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int start_server ;
 int vkprintf (int,char*) ;

void *ff_init (struct fuse_conn_info *conn) {
  vkprintf (2, "ff_init\n");
  pthread_mutex_init (&ff_mutex, ((void*)0));
  if (ff_start_server) {
    pthread_attr_t attr;
    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, PTHREAD_CREATE_JOINABLE);
    pthread_attr_setstacksize (&attr, 4 << 20);
    pthread_create (&ff_server_thread, &attr, start_server, ((void*)0));
    pthread_attr_destroy (&attr);
    ff_start_server = 0;
  }
  return ((void*)0);
}
