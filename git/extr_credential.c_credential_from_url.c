
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {char* path; void* host; int protocol; void* password; void* username; } ;


 int credential_clear (struct credential*) ;
 char* strchr (char const*,char) ;
 char* strchrnul (char const*,char) ;
 int strlen (char*) ;
 char* strstr (char const*,char*) ;
 char* url_decode (char const*) ;
 void* url_decode_mem (char const*,int) ;
 int xmemdupz (char const*,int) ;

void credential_from_url(struct credential *c, const char *url)
{
 const char *at, *colon, *cp, *slash, *host, *proto_end;

 credential_clear(c);







 proto_end = strstr(url, "://");
 if (!proto_end)
  return;
 cp = proto_end + 3;
 at = strchr(cp, '@');
 colon = strchr(cp, ':');
 slash = strchrnul(cp, '/');

 if (!at || slash <= at) {

  host = cp;
 }
 else if (!colon || at <= colon) {

  c->username = url_decode_mem(cp, at - cp);
  host = at + 1;
 } else {

  c->username = url_decode_mem(cp, colon - cp);
  c->password = url_decode_mem(colon + 1, at - (colon + 1));
  host = at + 1;
 }

 if (proto_end - url > 0)
  c->protocol = xmemdupz(url, proto_end - url);
 if (slash - host > 0)
  c->host = url_decode_mem(host, slash - host);

 while (*slash == '/')
  slash++;
 if (*slash) {
  char *p;
  c->path = url_decode(slash);
  p = c->path + strlen(c->path) - 1;
  while (p > c->path && *p == '/')
   *p-- = '\0';
 }
}
