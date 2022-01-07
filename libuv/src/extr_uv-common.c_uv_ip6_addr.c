
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_scope_id; int sin6_port; int sin6_family; } ;
typedef int address_part ;


 int AF_INET6 ;
 int atoi (char const*) ;
 int htons (int) ;
 int if_nametoindex (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 char* strchr (char const*,char) ;
 int uv_inet_pton (int ,char const*,int *) ;

int uv_ip6_addr(const char* ip, int port, struct sockaddr_in6* addr) {
  char address_part[40];
  size_t address_part_size;
  const char* zone_index;

  memset(addr, 0, sizeof(*addr));
  addr->sin6_family = AF_INET6;
  addr->sin6_port = htons(port);




  zone_index = strchr(ip, '%');
  if (zone_index != ((void*)0)) {
    address_part_size = zone_index - ip;
    if (address_part_size >= sizeof(address_part))
      address_part_size = sizeof(address_part) - 1;

    memcpy(address_part, ip, address_part_size);
    address_part[address_part_size] = '\0';
    ip = address_part;

    zone_index++;




    addr->sin6_scope_id = if_nametoindex(zone_index);

  }

  return uv_inet_pton(AF_INET6, ip, &addr->sin6_addr);
}
