
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cb {scalar_t__ cb_refcnt; } ;


 int BUG () ;
 int free (struct nl_cb*) ;

void nl_cb_put(struct nl_cb *cb)
{
 if (!cb)
  return;

 cb->cb_refcnt--;

 if (cb->cb_refcnt < 0)
  BUG();

 if (cb->cb_refcnt <= 0)
  free(cb);
}
