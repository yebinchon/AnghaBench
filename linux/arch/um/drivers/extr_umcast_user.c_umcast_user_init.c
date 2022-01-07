
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umcast_data {void* dev; void* remote_addr; void* listen_addr; int lport; scalar_t__ unicast; int rport; int * addr; } ;


 void* new_addr (int *,int ) ;

__attribute__((used)) static int umcast_user_init(void *data, void *dev)
{
 struct umcast_data *pri = data;

 pri->remote_addr = new_addr(pri->addr, pri->rport);
 if (pri->unicast)
  pri->listen_addr = new_addr(((void*)0), pri->lport);
 else
  pri->listen_addr = pri->remote_addr;
 pri->dev = dev;
 return 0;
}
