
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct conn_target {int custom_field; } ;


 int assert (int) ;

void change_conn_simple (struct conn_target *S, struct connection *c) {
  assert (S->custom_field < 0);
  S->custom_field = -S->custom_field;
}
