
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_chan {char* dev; int tt; scalar_t__ raw; int kernel_data; } ;


 int CATCH_EINTR (int) ;
 int port_wait (int ) ;
 int raw (int) ;
 int tcgetattr (int,int *) ;

__attribute__((used)) static int port_open(int input, int output, int primary, void *d,
       char **dev_out)
{
 struct port_chan *data = d;
 int fd, err;

 fd = port_wait(data->kernel_data);
 if ((fd >= 0) && data->raw) {
  CATCH_EINTR(err = tcgetattr(fd, &data->tt));
  if (err)
   return err;

  err = raw(fd);
  if (err)
   return err;
 }
 *dev_out = data->dev;
 return fd;
}
