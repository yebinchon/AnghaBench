
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl_msg {int dummy; } ;
struct attrlist_arg {int id; } ;


 int NLA_PUT_U32 (struct nl_msg*,int ,int ) ;
 int SWITCH_ATTR_ID ;

__attribute__((used)) static int
add_id(struct nl_msg *msg, void *arg)
{
 struct attrlist_arg *l = arg;

 NLA_PUT_U32(msg, SWITCH_ATTR_ID, l->id);

 return 0;
nla_put_failure:
 return -1;
}
