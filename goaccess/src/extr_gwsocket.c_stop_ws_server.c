
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_7__ {int * self_pipe; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_9__ {int thread; int mutex; int * self_pipe; } ;
struct TYPE_8__ {int thread; int mutex; TYPE_1__* server; } ;
typedef TYPE_2__ GWSWriter ;
typedef TYPE_3__ GWSReader ;


 scalar_t__ EAGAIN ;
 int LOG (char*) ;
 scalar_t__ errno ;
 scalar_t__ pthread_join (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strerror (scalar_t__) ;
 int write (int ,char*,int) ;
 int ws_stop (TYPE_1__*) ;

void
stop_ws_server (GWSWriter * gwswriter, GWSReader * gwsreader)
{
  pthread_t writer, reader;
  WSServer *server = ((void*)0);

  if (!gwsreader || !gwswriter)
    return;
  if (!(server = gwswriter->server))
    return;

  pthread_mutex_lock (&gwsreader->mutex);
  if ((write (gwsreader->self_pipe[1], "x", 1)) == -1 && errno != EAGAIN)
    LOG (("Unable to write to self pipe on pipeout.\n"));
  pthread_mutex_unlock (&gwsreader->mutex);

  pthread_mutex_lock (&gwswriter->mutex);

  if ((write (server->self_pipe[1], "x", 1)) == -1 && errno != EAGAIN)
    ws_stop (server);
  pthread_mutex_unlock (&gwswriter->mutex);

  reader = gwsreader->thread;
  if (pthread_join (reader, ((void*)0)) != 0)
    LOG (("Unable to join thread: %d %s\n", reader, strerror (errno)));

  writer = gwswriter->thread;
  if (pthread_join (writer, ((void*)0)) != 0)
    LOG (("Unable to join thread: %d %s\n", writer, strerror (errno)));
}
