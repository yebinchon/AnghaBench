
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ async_with_fork () ;
 int close (int) ;
 int recv_sideband (char*,int,int) ;

__attribute__((used)) static int sideband_demux(int in, int out, void *data)
{
 int *fd = data, ret;
 if (async_with_fork())
  close(fd[1]);
 ret = recv_sideband("send-pack", fd[0], out);
 close(out);
 return ret;
}
