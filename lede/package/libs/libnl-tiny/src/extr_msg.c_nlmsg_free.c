
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {scalar_t__ nm_refcnt; struct nl_msg* nm_nlh; } ;


 int BUG () ;
 int NL_DBG (int,char*,struct nl_msg*,...) ;
 int free (struct nl_msg*) ;

void nlmsg_free(struct nl_msg *msg)
{
 if (!msg)
  return;

 msg->nm_refcnt--;
 NL_DBG(4, "Returned message reference %p, %d remaining\n",
        msg, msg->nm_refcnt);

 if (msg->nm_refcnt < 0)
  BUG();

 if (msg->nm_refcnt <= 0) {
  free(msg->nm_nlh);
  free(msg);
  NL_DBG(2, "msg %p: Freed\n", msg);
 }
}
