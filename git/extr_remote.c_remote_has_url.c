
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int url_nr; int * url; } ;


 int strcmp (int ,char const*) ;

int remote_has_url(struct remote *remote, const char *url)
{
 int i;
 for (i = 0; i < remote->url_nr; i++) {
  if (!strcmp(remote->url[i], url))
   return 1;
 }
 return 0;
}
