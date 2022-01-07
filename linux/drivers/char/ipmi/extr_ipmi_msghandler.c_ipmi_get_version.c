
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {int intf; } ;
struct ipmi_device_id {int dummy; } ;


 int ENODEV ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 int bmc_get_device_id (int ,int *,struct ipmi_device_id*,int *,int *) ;
 unsigned char ipmi_version_major (struct ipmi_device_id*) ;
 unsigned char ipmi_version_minor (struct ipmi_device_id*) ;
 int release_ipmi_user (struct ipmi_user*,int) ;

int ipmi_get_version(struct ipmi_user *user,
       unsigned char *major,
       unsigned char *minor)
{
 struct ipmi_device_id id;
 int rv, index;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 rv = bmc_get_device_id(user->intf, ((void*)0), &id, ((void*)0), ((void*)0));
 if (!rv) {
  *major = ipmi_version_major(&id);
  *minor = ipmi_version_minor(&id);
 }
 release_ipmi_user(user, index);

 return rv;
}
