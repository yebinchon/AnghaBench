
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int family; } ;
struct nl_msg {int dummy; } ;


 int NLM_F_DUMP ;
 int NL_AUTO_PID ;
 int NL_AUTO_SEQ ;
 int genl_family_get_id (int ) ;
 int genlmsg_put (struct nl_msg*,int ,int ,int ,int ,int,int,int ) ;
 struct nl_msg* nlmsg_alloc () ;

struct nl_msg *unl_genl_msg(struct unl *unl, int cmd, bool dump)
{
 struct nl_msg *msg;
 int flags = 0;

 msg = nlmsg_alloc();
 if (!msg)
  goto out;

 if (dump)
  flags |= NLM_F_DUMP;

 genlmsg_put(msg, NL_AUTO_PID, NL_AUTO_SEQ,
      genl_family_get_id(unl->family), 0, flags, cmd, 0);

out:
 return msg;
}
