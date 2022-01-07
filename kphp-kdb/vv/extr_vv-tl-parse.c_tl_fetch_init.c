
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int __tl_fetch_init (struct connection*,int ,int ,int *,int) ;
 int tl_in_conn_methods ;
 int tl_type_conn ;

int tl_fetch_init (struct connection *c, int size) {
  return __tl_fetch_init (c, 0, tl_type_conn, &tl_in_conn_methods, size);
}
