
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pty_chan {char* dev_name; int dev; int (* announce ) (char*,int ) ;scalar_t__ raw; } ;


 int close (int) ;
 int getmaster (char*) ;
 int raw (int) ;
 int sprintf (char*,char*,char*) ;
 int stub1 (char*,int ) ;

__attribute__((used)) static int pty_open(int input, int output, int primary, void *d,
      char **dev_out)
{
 struct pty_chan *data = d;
 int fd, err;
 char dev[sizeof("/dev/ptyxx\0")] = "/dev/ptyxx";

 fd = getmaster(dev);
 if (fd < 0)
  return fd;

 if (data->raw) {
  err = raw(fd);
  if (err) {
   close(fd);
   return err;
  }
 }

 if (data->announce)
  (*data->announce)(dev, data->dev);

 sprintf(data->dev_name, "%s", dev);
 *dev_out = data->dev_name;

 return fd;
}
