
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_user {int intf; } ;
struct ipmi_addr {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 int check_addr (int ,struct ipmi_addr*,unsigned char*,unsigned char*) ;
 int i_ipmi_request (struct ipmi_user*,int ,struct ipmi_addr*,long,struct kernel_ipmi_msg*,void*,int *,int *,int,unsigned char,unsigned char,int,unsigned int) ;
 int release_ipmi_user (struct ipmi_user*,int) ;

int ipmi_request_settime(struct ipmi_user *user,
    struct ipmi_addr *addr,
    long msgid,
    struct kernel_ipmi_msg *msg,
    void *user_msg_data,
    int priority,
    int retries,
    unsigned int retry_time_ms)
{
 unsigned char saddr = 0, lun = 0;
 int rv, index;

 if (!user)
  return -EINVAL;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 rv = check_addr(user->intf, addr, &saddr, &lun);
 if (!rv)
  rv = i_ipmi_request(user,
        user->intf,
        addr,
        msgid,
        msg,
        user_msg_data,
        ((void*)0), ((void*)0),
        priority,
        saddr,
        lun,
        retries,
        retry_time_ms);

 release_ipmi_user(user, index);
 return rv;
}
