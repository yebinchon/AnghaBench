
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_data {int fd; int dev_name; int dev; int fixed_config; } ;


 int close (int) ;
 int close_addr ;
 int iter_addresses (int ,int ,int ) ;

__attribute__((used)) static void tuntap_close(int fd, void *data)
{
 struct tuntap_data *pri = data;

 if (!pri->fixed_config)
  iter_addresses(pri->dev, close_addr, pri->dev_name);
 close(fd);
 pri->fd = -1;
}
