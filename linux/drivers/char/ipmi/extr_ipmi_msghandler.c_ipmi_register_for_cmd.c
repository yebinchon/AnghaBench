
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {struct ipmi_smi* intf; } ;
struct ipmi_smi {int cmd_rcvrs_mutex; int cmd_rcvrs; } ;
struct cmd_rcvr {unsigned char cmd; unsigned char netfn; unsigned int chans; int link; struct ipmi_user* user; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPMI_WATCH_MASK_CHECK_COMMANDS ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 int is_cmd_rcvr_exclusive (struct ipmi_smi*,unsigned char,unsigned char,unsigned int) ;
 int kfree (struct cmd_rcvr*) ;
 struct cmd_rcvr* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_ipmi_user (struct ipmi_user*,int) ;
 int smi_add_watch (struct ipmi_smi*,int ) ;

int ipmi_register_for_cmd(struct ipmi_user *user,
     unsigned char netfn,
     unsigned char cmd,
     unsigned int chans)
{
 struct ipmi_smi *intf = user->intf;
 struct cmd_rcvr *rcvr;
 int rv = 0, index;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 rcvr = kmalloc(sizeof(*rcvr), GFP_KERNEL);
 if (!rcvr) {
  rv = -ENOMEM;
  goto out_release;
 }
 rcvr->cmd = cmd;
 rcvr->netfn = netfn;
 rcvr->chans = chans;
 rcvr->user = user;

 mutex_lock(&intf->cmd_rcvrs_mutex);

 if (!is_cmd_rcvr_exclusive(intf, netfn, cmd, chans)) {
  rv = -EBUSY;
  goto out_unlock;
 }

 smi_add_watch(intf, IPMI_WATCH_MASK_CHECK_COMMANDS);

 list_add_rcu(&rcvr->link, &intf->cmd_rcvrs);

out_unlock:
 mutex_unlock(&intf->cmd_rcvrs_mutex);
 if (rv)
  kfree(rcvr);
out_release:
 release_ipmi_user(user, index);

 return rv;
}
