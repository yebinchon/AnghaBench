
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int status; } ;


 int conn_wait_answer ;

__attribute__((used)) static int sqlc_connected (struct connection *c) {
  c->status = conn_wait_answer;
  return 0;
}
