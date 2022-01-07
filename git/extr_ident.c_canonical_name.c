
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct hostent {scalar_t__ h_name; } ;
struct addrinfo {scalar_t__ ai_canonname; int ai_flags; } ;
typedef int hints ;


 int AI_CANONNAME ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 struct hostent* gethostbyname (char const*) ;
 int memset (struct addrinfo*,char,int) ;
 int strbuf_addstr (struct strbuf*,scalar_t__) ;
 scalar_t__ strchr (scalar_t__,char) ;

__attribute__((used)) static int canonical_name(const char *host, struct strbuf *out)
{
 int status = -1;


 struct addrinfo hints, *ai;
 memset (&hints, '\0', sizeof (hints));
 hints.ai_flags = AI_CANONNAME;
 if (!getaddrinfo(host, ((void*)0), &hints, &ai)) {
  if (ai && ai->ai_canonname && strchr(ai->ai_canonname, '.')) {
   strbuf_addstr(out, ai->ai_canonname);
   status = 0;
  }
  freeaddrinfo(ai);
 }
 return status;
}
