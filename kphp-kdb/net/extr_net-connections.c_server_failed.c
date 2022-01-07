
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; } ;


 int assert (int ) ;
 int kprintf (char*,int ) ;

int server_failed (struct connection *c) {
  kprintf ("connection %d: call to pure virtual method\n", c->fd);
  assert (0);
  return -1;
}
