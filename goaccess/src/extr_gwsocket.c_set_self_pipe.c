
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,int ) ;
 int errno ;
 int pipe (int*) ;
 int set_nonblocking (int) ;
 int strerror (int ) ;

void
set_self_pipe (int *self_pipe)
{

  if (pipe (self_pipe) == -1)
    FATAL ("Unable to create pipe: %s.", strerror (errno));


  set_nonblocking (self_pipe[0]);
  set_nonblocking (self_pipe[1]);
}
