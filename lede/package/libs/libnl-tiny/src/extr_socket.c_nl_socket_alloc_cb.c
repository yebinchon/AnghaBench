
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cb {int dummy; } ;


 int BUG () ;
 struct nl_sock* __alloc_socket (int ) ;
 int nl_cb_get (struct nl_cb*) ;

struct nl_sock *nl_socket_alloc_cb(struct nl_cb *cb)
{
 if (cb == ((void*)0))
  BUG();

 return __alloc_socket(nl_cb_get(cb));
}
