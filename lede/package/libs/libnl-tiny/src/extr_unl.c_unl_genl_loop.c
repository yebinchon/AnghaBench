
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unl_cb ;
struct unl {int loop_done; int sock; } ;
struct nl_cb {int dummy; } ;


 int NL_CB_CUSTOM ;
 int NL_CB_SEQ_CHECK ;
 int NL_CB_VALID ;
 struct nl_cb* nl_cb_alloc (int ) ;
 int nl_cb_put (struct nl_cb*) ;
 int nl_cb_set (struct nl_cb*,int ,int ,int ,void*) ;
 int nl_recvmsgs (int ,struct nl_cb*) ;
 int no_seq_check ;

void unl_genl_loop(struct unl *unl, unl_cb handler, void *arg)
{
 struct nl_cb *cb;

 cb = nl_cb_alloc(NL_CB_CUSTOM);
 unl->loop_done = 0;
 nl_cb_set(cb, NL_CB_SEQ_CHECK, NL_CB_CUSTOM, no_seq_check, ((void*)0));
 nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, handler, arg);

 while (!unl->loop_done)
  nl_recvmsgs(unl->sock, cb);

 nl_cb_put(cb);
}
