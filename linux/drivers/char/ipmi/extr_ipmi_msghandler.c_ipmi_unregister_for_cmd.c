
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {struct ipmi_smi* intf; } ;
struct ipmi_smi {int cmd_rcvrs_mutex; } ;
struct cmd_rcvr {unsigned int chans; struct cmd_rcvr* next; int link; struct ipmi_user* user; } ;


 int ENODEV ;
 int ENOENT ;
 int IPMI_NUM_CHANNELS ;
 int IPMI_WATCH_MASK_CHECK_COMMANDS ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 struct cmd_rcvr* find_cmd_rcvr (struct ipmi_smi*,unsigned char,unsigned char,int) ;
 int kfree (struct cmd_rcvr*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_ipmi_user (struct ipmi_user*,int) ;
 int smi_remove_watch (struct ipmi_smi*,int ) ;
 int synchronize_rcu () ;

int ipmi_unregister_for_cmd(struct ipmi_user *user,
       unsigned char netfn,
       unsigned char cmd,
       unsigned int chans)
{
 struct ipmi_smi *intf = user->intf;
 struct cmd_rcvr *rcvr;
 struct cmd_rcvr *rcvrs = ((void*)0);
 int i, rv = -ENOENT, index;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 mutex_lock(&intf->cmd_rcvrs_mutex);
 for (i = 0; i < IPMI_NUM_CHANNELS; i++) {
  if (((1 << i) & chans) == 0)
   continue;
  rcvr = find_cmd_rcvr(intf, netfn, cmd, i);
  if (rcvr == ((void*)0))
   continue;
  if (rcvr->user == user) {
   rv = 0;
   rcvr->chans &= ~chans;
   if (rcvr->chans == 0) {
    list_del_rcu(&rcvr->link);
    rcvr->next = rcvrs;
    rcvrs = rcvr;
   }
  }
 }
 mutex_unlock(&intf->cmd_rcvrs_mutex);
 synchronize_rcu();
 release_ipmi_user(user, index);
 while (rcvrs) {
  smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_COMMANDS);
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree(rcvr);
 }

 return rv;
}
