
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int b ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 char* evutil_inet_ntop (scalar_t__,int *,char*,int) ;
 int evutil_snprintf (char*,size_t,char*,...) ;
 int ntohs (int ) ;

const char *
evutil_format_sockaddr_port_(const struct sockaddr *sa, char *out, size_t outlen)
{
 char b[128];
 const char *res=((void*)0);
 int port;
 if (sa->sa_family == AF_INET) {
  const struct sockaddr_in *sin = (const struct sockaddr_in*)sa;
  res = evutil_inet_ntop(AF_INET, &sin->sin_addr,b,sizeof(b));
  port = ntohs(sin->sin_port);
  if (res) {
   evutil_snprintf(out, outlen, "%s:%d", b, port);
   return out;
  }
 } else if (sa->sa_family == AF_INET6) {
  const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6*)sa;
  res = evutil_inet_ntop(AF_INET6, &sin6->sin6_addr,b,sizeof(b));
  port = ntohs(sin6->sin6_port);
  if (res) {
   evutil_snprintf(out, outlen, "[%s]:%d", b, port);
   return out;
  }
 }

 evutil_snprintf(out, outlen, "<addr with socktype %d>",
     (int)sa->sa_family);
 return out;
}
