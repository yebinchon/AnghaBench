
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int write_out (int *,char*,int) ;

int mcs_get_end (struct connection *c, int key_count) {
  write_out (&c->Out, "END\r\n", 5);
  return 0;
}
