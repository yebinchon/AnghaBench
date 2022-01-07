
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_6__ {int thread; int * server; int mutex; } ;
typedef TYPE_1__ GWSWriter ;
typedef TYPE_1__ GWSReader ;


 int FATAL (char*,...) ;
 int pthread_create (int *,int *,void*,TYPE_1__*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int read_client ;
 int set_ws_opts ;
 int start_server ;
 int * ws_init (char*,char*,int ) ;

int
setup_ws_server (GWSWriter * gwswriter, GWSReader * gwsreader)
{
  int id;
  pthread_t *thread;

  if (pthread_mutex_init (&gwswriter->mutex, ((void*)0)))
    FATAL ("Failed init gwswriter mutex");
  if (pthread_mutex_init (&gwsreader->mutex, ((void*)0)))
    FATAL ("Failed init gwsreader mutex");


  thread = &gwswriter->thread;


  if ((gwswriter->server = ws_init ("0.0.0.0", "7890", set_ws_opts)) == ((void*)0))
    FATAL ("Failed init websocket");

  id = pthread_create (&(*thread), ((void*)0), (void *) &start_server, gwswriter);
  if (id)
    FATAL ("Return code from pthread_create(): %d", id);


  thread = &gwsreader->thread;
  id = pthread_create (&(*thread), ((void*)0), (void *) &read_client, gwsreader);
  if (id)
    FATAL ("Return code from pthread_create(): %d", id);

  return 0;
}
