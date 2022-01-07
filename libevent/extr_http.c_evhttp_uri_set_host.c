
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {int dummy; } ;


 int URI_SET_STR_ (char const*) ;
 int bracket_addr_ok (char const*,char const*) ;
 int regname_ok (char const*,char const*) ;
 int strlen (char const*) ;

int
evhttp_uri_set_host(struct evhttp_uri *uri, const char *host)
{
 if (host) {
  if (host[0] == '[') {
   if (! bracket_addr_ok(host, host+strlen(host)))
    return -1;
  } else {
   if (! regname_ok(host, host+strlen(host)))
    return -1;
  }
 }

 URI_SET_STR_(host);
 return 0;
}
