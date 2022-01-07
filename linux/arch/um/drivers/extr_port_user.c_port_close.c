
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_chan {int kernel_data; } ;


 int os_close_file (int) ;
 int port_remove_dev (int ) ;

__attribute__((used)) static void port_close(int fd, void *d)
{
 struct port_chan *data = d;

 port_remove_dev(data->kernel_data);
 os_close_file(fd);
}
