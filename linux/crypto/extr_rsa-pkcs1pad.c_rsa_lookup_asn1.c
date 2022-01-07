
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_asn1_template {scalar_t__ name; } ;


 struct rsa_asn1_template* rsa_asn1_templates ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static const struct rsa_asn1_template *rsa_lookup_asn1(const char *name)
{
 const struct rsa_asn1_template *p;

 for (p = rsa_asn1_templates; p->name; p++)
  if (strcmp(name, p->name) == 0)
   return p;
 return ((void*)0);
}
