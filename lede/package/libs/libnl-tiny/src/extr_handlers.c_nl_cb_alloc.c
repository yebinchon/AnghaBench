
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cb {int cb_refcnt; } ;
typedef enum nl_cb_kind { ____Placeholder_nl_cb_kind } nl_cb_kind ;


 int NL_CB_KIND_MAX ;
 int NL_CB_TYPE_MAX ;
 struct nl_cb* calloc (int,int) ;
 int nl_cb_err (struct nl_cb*,int,int *,int *) ;
 int nl_cb_set (struct nl_cb*,int,int,int *,int *) ;

struct nl_cb *nl_cb_alloc(enum nl_cb_kind kind)
{
 int i;
 struct nl_cb *cb;

 if (kind < 0 || kind > NL_CB_KIND_MAX)
  return ((void*)0);

 cb = calloc(1, sizeof(*cb));
 if (!cb)
  return ((void*)0);

 cb->cb_refcnt = 1;

 for (i = 0; i <= NL_CB_TYPE_MAX; i++)
  nl_cb_set(cb, i, kind, ((void*)0), ((void*)0));

 nl_cb_err(cb, kind, ((void*)0), ((void*)0));

 return cb;
}
