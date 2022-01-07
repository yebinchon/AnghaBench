
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unl_cb ;
struct unl {int sock; } ;
struct nl_msg {int dummy; } ;
struct nl_cb {int dummy; } ;


 int NL_CB_ACK ;
 int NL_CB_CUSTOM ;
 int NL_CB_FINISH ;
 int NL_CB_VALID ;
 int ack_handler ;
 int error_handler ;
 int finish_handler ;
 struct nl_cb* nl_cb_alloc (int ) ;
 int nl_cb_err (struct nl_cb*,int ,int ,int*) ;
 int nl_cb_put (struct nl_cb*) ;
 int nl_cb_set (struct nl_cb*,int ,int ,scalar_t__,void*) ;
 int nl_recvmsgs (int ,struct nl_cb*) ;
 int nl_send_auto_complete (int ,struct nl_msg*) ;
 int nlmsg_free (struct nl_msg*) ;

int unl_genl_request(struct unl *unl, struct nl_msg *msg, unl_cb handler, void *arg)
{
 struct nl_cb *cb;
 int err;

 cb = nl_cb_alloc(NL_CB_CUSTOM);
 err = nl_send_auto_complete(unl->sock, msg);
 if (err < 0)
  goto out;

 err = 1;
 nl_cb_err(cb, NL_CB_CUSTOM, error_handler, &err);
 nl_cb_set(cb, NL_CB_FINISH, NL_CB_CUSTOM, finish_handler, &err);
 nl_cb_set(cb, NL_CB_ACK, NL_CB_CUSTOM, ack_handler, &err);
 if (handler)
  nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM, handler, arg);

 while (err > 0)
  nl_recvmsgs(unl->sock, cb);

out:
 nlmsg_free(msg);
 nl_cb_put(cb);
 return err;
}
