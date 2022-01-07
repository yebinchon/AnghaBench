
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_sock {int dummy; } ;
struct nl_cb {int dummy; } ;


 int NL_CB_DEFAULT ;
 struct nl_sock* __alloc_socket (struct nl_cb*) ;
 struct nl_cb* nl_cb_alloc (int ) ;

struct nl_sock *nl_socket_alloc(void)
{
 struct nl_cb *cb;

 cb = nl_cb_alloc(NL_CB_DEFAULT);
 if (!cb)
  return ((void*)0);

 return __alloc_socket(cb);
}
