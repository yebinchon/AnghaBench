
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int write_out (int *,char*,int) ;

int mcs_incr (struct connection *c, int op, const char *key, int key_len, long long arg) {
  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
