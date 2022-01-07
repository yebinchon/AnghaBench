
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;


 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 char* crypto_attr_alg_name (struct rtattr*) ;
 int crypto_ccm_create_common (struct crypto_template*,struct rtattr**,char const*,char const*) ;

__attribute__((used)) static int crypto_ccm_base_create(struct crypto_template *tmpl,
      struct rtattr **tb)
{
 const char *ctr_name;
 const char *mac_name;

 ctr_name = crypto_attr_alg_name(tb[1]);
 if (IS_ERR(ctr_name))
  return PTR_ERR(ctr_name);

 mac_name = crypto_attr_alg_name(tb[2]);
 if (IS_ERR(mac_name))
  return PTR_ERR(mac_name);

 return crypto_ccm_create_common(tmpl, tb, ctr_name, mac_name);
}
