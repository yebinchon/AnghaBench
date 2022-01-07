
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daemon_data {int fd; int control; int * local_addr; int * ctl_addr; int * data_addr; } ;


 int close (int) ;
 int kfree (int *) ;

__attribute__((used)) static void daemon_remove(void *data)
{
 struct daemon_data *pri = data;

 close(pri->fd);
 pri->fd = -1;
 close(pri->control);
 pri->control = -1;

 kfree(pri->data_addr);
 pri->data_addr = ((void*)0);
 kfree(pri->ctl_addr);
 pri->ctl_addr = ((void*)0);
 kfree(pri->local_addr);
 pri->local_addr = ((void*)0);
}
