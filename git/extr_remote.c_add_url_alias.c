
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 int add_pushurl_alias (struct remote*,char const*) ;
 int add_url (struct remote*,int ) ;
 int alias_url (char const*,int *) ;
 int rewrites ;

__attribute__((used)) static void add_url_alias(struct remote *remote, const char *url)
{
 add_url(remote, alias_url(url, &rewrites));
 add_pushurl_alias(remote, url);
}
