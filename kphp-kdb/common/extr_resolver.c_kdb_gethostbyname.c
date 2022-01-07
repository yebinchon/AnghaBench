
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; } ;
struct host {int ip; } ;


 int AF_INET6 ;
 int Hosts ;
 struct host* getHash (int *,char const*,int,int ) ;
 scalar_t__ gethostbyname (char const*) ;
 struct hostent* gethostbyname2 (char const*,int ) ;
 struct hostent hret ;
 int htonl (int ) ;
 int ipaddr ;
 scalar_t__ kdb_hosts_loaded ;
 int kdb_load_hosts () ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;

struct hostent *kdb_gethostbyname (const char *name) {
  if (!kdb_hosts_loaded) {
    kdb_load_hosts ();
  }

  int len = strlen (name);


  if (name[0] == '[' && name[len-1] == ']' && len <= 64) {






    char buf[64];
    memcpy (buf, name + 1, len - 2);
    buf[len - 2] = 0;
    return gethostbyname2 (buf, AF_INET6);
  }


  if (kdb_hosts_loaded <= 0) {
    return gethostbyname (name) ?: gethostbyname2 (name, AF_INET6);
  }

  if (len >= 128) {
    return gethostbyname (name) ?: gethostbyname2 (name, AF_INET6);
  }

  struct host *res = getHash (&Hosts, name, len, 0);

  if (!res) {
    if (strchr (name, '.') || strchr (name, ':')) {
      return gethostbyname (name) ?: gethostbyname2 (name, AF_INET6);
    } else {
      return 0;
    }
  }

  hret.h_name = (char *)name;
  ipaddr = htonl (res->ip);
  return &hret;
}
