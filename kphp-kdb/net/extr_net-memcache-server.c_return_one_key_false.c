
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int write_out (int *,char const*,int) ;

int return_one_key_false (struct connection *c, const char *key, int key_len) {
  write_out (&c->Out, "VALUE ", 6);
  write_out (&c->Out, key, key_len);
  write_out (&c->Out, " 1 4\r\nb:0;\r\n", 12);
  return 0;
}
