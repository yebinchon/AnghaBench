
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethertap_data {int control_fd; } ;


 int etap_close_addr (unsigned char*,unsigned char*,int*) ;

__attribute__((used)) static void etap_del_addr(unsigned char *addr, unsigned char *netmask,
     void *data)
{
 struct ethertap_data *pri = data;

 if (pri->control_fd == -1)
  return;

 etap_close_addr(addr, netmask, &pri->control_fd);
}
