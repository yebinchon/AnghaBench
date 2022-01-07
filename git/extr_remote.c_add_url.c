
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {char const** url; scalar_t__ url_nr; int url_alloc; } ;


 int ALLOC_GROW (char const**,scalar_t__,int ) ;

__attribute__((used)) static void add_url(struct remote *remote, const char *url)
{
 ALLOC_GROW(remote->url, remote->url_nr + 1, remote->url_alloc);
 remote->url[remote->url_nr++] = url;
}
