
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_cb {void* cb_err_arg; int cb_err; } ;
typedef int nl_recvmsg_err_cb_t ;
typedef enum nl_cb_kind { ____Placeholder_nl_cb_kind } nl_cb_kind ;


 int NLE_RANGE ;
 int NL_CB_CUSTOM ;
 int NL_CB_KIND_MAX ;

int nl_cb_err(struct nl_cb *cb, enum nl_cb_kind kind,
       nl_recvmsg_err_cb_t func, void *arg)
{
 if (kind < 0 || kind > NL_CB_KIND_MAX)
  return -NLE_RANGE;

 if (kind == NL_CB_CUSTOM) {
  cb->cb_err = func;
  cb->cb_err_arg = arg;
 }

 return 0;
}
