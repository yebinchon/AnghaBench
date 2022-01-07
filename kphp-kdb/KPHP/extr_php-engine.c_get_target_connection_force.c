
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;
struct conn_target {int dummy; } ;


 int create_new_connections (struct conn_target*) ;
 struct connection* get_target_connection (struct conn_target*,int) ;

struct connection *get_target_connection_force (struct conn_target *S) {
  struct connection *res = get_target_connection (S, 0);

  if (res == ((void*)0)) {
    create_new_connections (S);
    res = get_target_connection (S, 1);
  }

  return res;
}
