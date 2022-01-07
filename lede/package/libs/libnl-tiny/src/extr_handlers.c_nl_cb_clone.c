
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cb {int cb_refcnt; } ;


 int NL_CB_DEFAULT ;
 int memcpy (struct nl_cb*,struct nl_cb*,int) ;
 struct nl_cb* nl_cb_alloc (int ) ;

struct nl_cb *nl_cb_clone(struct nl_cb *orig)
{
 struct nl_cb *cb;

 cb = nl_cb_alloc(NL_CB_DEFAULT);
 if (!cb)
  return ((void*)0);

 memcpy(cb, orig, sizeof(*orig));
 cb->cb_refcnt = 1;

 return cb;
}
