
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {int refcount; } ;


 int _ipmi_destroy_user (struct ipmi_user*) ;
 int free_user ;
 int kref_put (int *,int ) ;

int ipmi_destroy_user(struct ipmi_user *user)
{
 _ipmi_destroy_user(user);

 kref_put(&user->refcount, free_user);

 return 0;
}
