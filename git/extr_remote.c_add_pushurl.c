
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {char const** pushurl; scalar_t__ pushurl_nr; int pushurl_alloc; } ;


 int ALLOC_GROW (char const**,scalar_t__,int ) ;

__attribute__((used)) static void add_pushurl(struct remote *remote, const char *pushurl)
{
 ALLOC_GROW(remote->pushurl, remote->pushurl_nr + 1, remote->pushurl_alloc);
 remote->pushurl[remote->pushurl_nr++] = pushurl;
}
