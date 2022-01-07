
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fd_set ;
struct TYPE_3__ {int fd; int mutex; int self_pipe; } ;
typedef TYPE_1__ GWSReader ;


 int FD_ZERO (int *) ;
 int close (int) ;
 int fast_forward_client ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ read_fifo (TYPE_1__*,int ,int ,int ) ;
 int set_self_pipe (int ) ;

void
read_client (void *ptr_data)
{
  GWSReader *reader = (GWSReader *) ptr_data;
  fd_set rfds, wfds;

  FD_ZERO (&rfds);
  FD_ZERO (&wfds);


  if (reader->fd == -1)
    return;

  pthread_mutex_lock (&reader->mutex);
  set_self_pipe (reader->self_pipe);
  pthread_mutex_unlock (&reader->mutex);

  while (1) {

    if (read_fifo (reader, rfds, wfds, fast_forward_client))
      break;
  }
  close (reader->fd);
}
