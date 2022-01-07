
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {int dummy; } ;


 int capabilities ;

__attribute__((used)) static int ipmi_chassis_detect(struct ipmi_user *user)
{

 return (capabilities & 0x80);
}
