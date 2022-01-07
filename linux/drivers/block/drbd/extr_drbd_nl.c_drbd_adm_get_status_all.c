
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {long* args; int nlh; } ;
struct drbd_resource {int kref; } ;


 int ARRAY_SIZE (int ) ;
 int DRBD_NLA_CFG_CONTEXT ;
 int EINVAL ;
 int ENODEV ;
 unsigned int GENL_HDRLEN ;
 unsigned int GENL_MAGIC_FAMILY_HDRSZ ;
 scalar_t__ IS_ERR (struct nlattr*) ;
 int PTR_ERR (struct nlattr*) ;
 int T_ctx_resource_name ;
 int __nla_type (int ) ;
 int drbd_cfg_context_nl_policy ;
 int drbd_destroy_resource ;
 struct drbd_resource* drbd_find_resource (char const*) ;
 struct nlattr* drbd_nla_find_nested (int,struct nlattr*,int ) ;
 int get_one_status (struct sk_buff*,struct netlink_callback*) ;
 int kref_put (int *,int ) ;
 char* nla_data (struct nlattr*) ;
 struct nlattr* nla_find (int ,int ,int ) ;
 int nlmsg_attrdata (int ,unsigned int const) ;
 int nlmsg_attrlen (int ,unsigned int const) ;

int drbd_adm_get_status_all(struct sk_buff *skb, struct netlink_callback *cb)
{
 const unsigned hdrlen = GENL_HDRLEN + GENL_MAGIC_FAMILY_HDRSZ;
 struct nlattr *nla;
 const char *resource_name;
 struct drbd_resource *resource;
 int maxtype;


 if (cb->args[0]) {


  if (cb->args[2] && cb->args[2] != cb->args[0])
   return 0;
  goto dump;
 }



 nla = nla_find(nlmsg_attrdata(cb->nlh, hdrlen),
   nlmsg_attrlen(cb->nlh, hdrlen),
   DRBD_NLA_CFG_CONTEXT);


 if (!nla)
  goto dump;
 maxtype = ARRAY_SIZE(drbd_cfg_context_nl_policy) - 1;
 nla = drbd_nla_find_nested(maxtype, nla, __nla_type(T_ctx_resource_name));
 if (IS_ERR(nla))
  return PTR_ERR(nla);

 if (!nla)
  return -EINVAL;
 resource_name = nla_data(nla);
 if (!*resource_name)
  return -ENODEV;
 resource = drbd_find_resource(resource_name);
 if (!resource)
  return -ENODEV;

 kref_put(&resource->kref, drbd_destroy_resource);



 cb->args[0] = (long)resource;

 cb->args[2] = (long)resource;

dump:
 return get_one_status(skb, cb);
}
