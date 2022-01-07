
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; } ;


 int SKIP_ALL_BYTES ;
 int vkprintf (int,char*,int ,int,int) ;

int rpcc_execute (struct connection *c, int op, int len) {
  vkprintf (1, "rpcc_execute: fd=%d, op=%x, len=%d\n", c->fd, op, len);
  return SKIP_ALL_BYTES;
}
