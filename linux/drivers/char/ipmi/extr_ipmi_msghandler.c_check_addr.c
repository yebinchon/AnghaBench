
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi {TYPE_1__* addrinfo; } ;
struct ipmi_addr {size_t channel; } ;
struct TYPE_2__ {unsigned char lun; unsigned char address; } ;


 int EINVAL ;
 size_t IPMI_MAX_CHANNELS ;
 size_t array_index_nospec (size_t,size_t) ;

__attribute__((used)) static int check_addr(struct ipmi_smi *intf,
        struct ipmi_addr *addr,
        unsigned char *saddr,
        unsigned char *lun)
{
 if (addr->channel >= IPMI_MAX_CHANNELS)
  return -EINVAL;
 addr->channel = array_index_nospec(addr->channel, IPMI_MAX_CHANNELS);
 *lun = intf->addrinfo[addr->channel].lun;
 *saddr = intf->addrinfo[addr->channel].address;
 return 0;
}
