
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_fdinit (int *,int ) ;
 int error_errno (char*,int) ;
 int init (int ) ;
 int input ;
 int xdup (int) ;

int svndump_init_fd(int in_fd, int back_fd)
{
 if(buffer_fdinit(&input, xdup(in_fd)))
  return error_errno("cannot open fd %d", in_fd);
 init(xdup(back_fd));
 return 0;
}
