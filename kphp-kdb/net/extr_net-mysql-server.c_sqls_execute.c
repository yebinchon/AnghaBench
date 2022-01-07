
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int SKIP_ALL_BYTES ;
 int send_error_packet (struct connection*,int,int,char*,int,int) ;
 int sqls_builtin_execute (struct connection*,int) ;

int sqls_execute (struct connection *c, int op) {
  int res = sqls_builtin_execute (c, op);
  if (res == SKIP_ALL_BYTES) {
    send_error_packet (c, 1045, 28000, "Failed", 6, 1);
  }
  return res;
}
