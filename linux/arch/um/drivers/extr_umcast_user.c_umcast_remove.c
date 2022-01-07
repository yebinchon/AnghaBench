
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umcast_data {int * remote_addr; int * listen_addr; scalar_t__ unicast; } ;


 int kfree (int *) ;

__attribute__((used)) static void umcast_remove(void *data)
{
 struct umcast_data *pri = data;

 kfree(pri->listen_addr);
 if (pri->unicast)
  kfree(pri->remote_addr);
 pri->listen_addr = pri->remote_addr = ((void*)0);
}
