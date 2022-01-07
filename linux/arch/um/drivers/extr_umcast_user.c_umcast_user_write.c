
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umcast_data {struct sockaddr_in* remote_addr; } ;
struct sockaddr_in {int dummy; } ;


 int net_sendto (int,void*,int,struct sockaddr_in*,int) ;

int umcast_user_write(int fd, void *buf, int len, struct umcast_data *pri)
{
 struct sockaddr_in *data_addr = pri->remote_addr;

 return net_sendto(fd, buf, len, data_addr, sizeof(*data_addr));
}
