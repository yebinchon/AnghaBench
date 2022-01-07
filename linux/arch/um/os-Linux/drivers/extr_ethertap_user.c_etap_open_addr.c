
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ADDR ;
 int etap_change (int ,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void etap_open_addr(unsigned char *addr, unsigned char *netmask,
      void *arg)
{
 etap_change(ADD_ADDR, addr, netmask, *((int *) arg));
}
