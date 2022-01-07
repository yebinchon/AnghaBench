
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_connection {int dummy; } ;


 int zzfree (struct rpc_connection*,int) ;

void free_connection (struct rpc_connection *s) {
  zzfree (s, sizeof (*s));
}
