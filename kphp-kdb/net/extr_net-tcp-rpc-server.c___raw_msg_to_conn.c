
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int assert (int) ;
 int write_out (int *,char const*,int) ;

void __raw_msg_to_conn (struct connection *c, const char *data, int len) {
  assert (write_out (&c->In, data, len) == len);
}
