
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nla_policy {int dummy; } ;


 int drbd_nla_check_mandatory (int,struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,struct nla_policy const*,int *) ;

int drbd_nla_parse_nested(struct nlattr *tb[], int maxtype, struct nlattr *nla,
     const struct nla_policy *policy)
{
 int err;

 err = drbd_nla_check_mandatory(maxtype, nla);
 if (!err)
  err = nla_parse_nested_deprecated(tb, maxtype, nla, policy,
        ((void*)0));

 return err;
}
