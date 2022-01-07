
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 struct nlattr* ERR_PTR (int) ;
 int drbd_nla_check_mandatory (int,struct nlattr*) ;
 struct nlattr* nla_find_nested (struct nlattr*,int) ;

struct nlattr *drbd_nla_find_nested(int maxtype, struct nlattr *nla, int attrtype)
{
 int err;





 err = drbd_nla_check_mandatory(maxtype, nla);
 if (err)
  return ERR_PTR(err);
 return nla_find_nested(nla, attrtype);
}
