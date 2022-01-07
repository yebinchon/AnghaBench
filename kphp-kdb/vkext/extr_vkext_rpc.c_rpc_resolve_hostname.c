
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int h_addr_list; } ;


 scalar_t__ AF_INET ;
 struct hostent* gethostbyname (char const*) ;
 int ntohl (int) ;

unsigned rpc_resolve_hostname (const char *host) {
  struct hostent *h;
  if (!(h = gethostbyname (host)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
    return 0;
  }
  return ntohl (*((int *) h->h_addr));
}
