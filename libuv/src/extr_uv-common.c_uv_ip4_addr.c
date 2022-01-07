
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;


 int AF_INET ;
 int htons (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int uv_inet_pton (int ,char const*,int *) ;

int uv_ip4_addr(const char* ip, int port, struct sockaddr_in* addr) {
  memset(addr, 0, sizeof(*addr));
  addr->sin_family = AF_INET;
  addr->sin_port = htons(port);



  return uv_inet_pton(AF_INET, ip, &(addr->sin_addr.s_addr));
}
