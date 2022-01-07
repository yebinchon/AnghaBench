
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pushurl_nr; int url_nr; void** url; void** pushurl; } ;


 int add_pushurl_alias (TYPE_1__*,void*) ;
 void* alias_url (void*,int *) ;
 TYPE_1__** remotes ;
 int remotes_nr ;
 int rewrites ;

__attribute__((used)) static void alias_all_urls(void)
{
 int i, j;
 for (i = 0; i < remotes_nr; i++) {
  int add_pushurl_aliases;
  if (!remotes[i])
   continue;
  for (j = 0; j < remotes[i]->pushurl_nr; j++) {
   remotes[i]->pushurl[j] = alias_url(remotes[i]->pushurl[j], &rewrites);
  }
  add_pushurl_aliases = remotes[i]->pushurl_nr == 0;
  for (j = 0; j < remotes[i]->url_nr; j++) {
   if (add_pushurl_aliases)
    add_pushurl_alias(remotes[i], remotes[i]->url[j]);
   remotes[i]->url[j] = alias_url(remotes[i]->url[j], &rewrites);
  }
 }
}
