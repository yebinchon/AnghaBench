
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_base {int dummy; } ;
struct evrpc {int dummy; } ;


 struct evrpc* evrpc_register_object (char const*,void* (*) (void*),void*,void (*) (void*),int (*) (void*,struct evbuffer*),void* (*) (void*),void*,void (*) (void*),int (*) (void*),void (*) (struct evbuffer*,void*)) ;
 int evrpc_register_rpc (struct evrpc_base*,struct evrpc*,void (*) (struct evrpc_req_generic*,void*),void*) ;

int
evrpc_register_generic(struct evrpc_base *base, const char *name,
    void (*callback)(struct evrpc_req_generic *, void *), void *cbarg,
    void *(*req_new)(void *), void *req_new_arg, void (*req_free)(void *),
    int (*req_unmarshal)(void *, struct evbuffer *),
    void *(*rpl_new)(void *), void *rpl_new_arg, void (*rpl_free)(void *),
    int (*rpl_complete)(void *),
    void (*rpl_marshal)(struct evbuffer *, void *))
{
 struct evrpc* rpc =
     evrpc_register_object(name, req_new, req_new_arg, req_free, req_unmarshal,
  rpl_new, rpl_new_arg, rpl_free, rpl_complete, rpl_marshal);
 if (rpc == ((void*)0))
  return (-1);
 evrpc_register_rpc(base, rpc,
     (void (*)(struct evrpc_req_generic*, void *))callback, cbarg);
 return (0);
}
