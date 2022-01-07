
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {int dummy; } ;


 int promisor_remote_init () ;
 struct promisor_remote* promisor_remote_lookup (char const*,int *) ;
 struct promisor_remote* promisors ;

struct promisor_remote *promisor_remote_find(const char *remote_name)
{
 promisor_remote_init();

 if (!remote_name)
  return promisors;

 return promisor_remote_lookup(remote_name, ((void*)0));
}
