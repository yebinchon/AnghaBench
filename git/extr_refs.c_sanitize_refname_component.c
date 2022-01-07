
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int BUG (char*,char const*) ;
 int REFNAME_ALLOW_ONELEVEL ;
 scalar_t__ check_or_sanitize_refname (char const*,int ,struct strbuf*) ;

void sanitize_refname_component(const char *refname, struct strbuf *out)
{
 if (check_or_sanitize_refname(refname, REFNAME_ALLOW_ONELEVEL, out))
  BUG("sanitizing refname '%s' check returned error", refname);
}
