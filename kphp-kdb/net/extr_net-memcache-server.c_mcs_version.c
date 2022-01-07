
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int write_out (int *,char*,int) ;

int mcs_version (struct connection *c) {
  write_out (&c->Out, "VERSION 2.3.9\r\n", 15);
  return 0;
}
