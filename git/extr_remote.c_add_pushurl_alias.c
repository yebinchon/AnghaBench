
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 int add_pushurl (struct remote*,char const*) ;
 char* alias_url (char const*,int *) ;
 int rewrites_push ;

__attribute__((used)) static void add_pushurl_alias(struct remote *remote, const char *url)
{
 const char *pushurl = alias_url(url, &rewrites_push);
 if (pushurl != url)
  add_pushurl(remote, pushurl);
}
