
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kernel_ip (unsigned long) ;
 scalar_t__ virt_addr_valid (unsigned long) ;

__attribute__((used)) static inline bool valid_kernel_ip(unsigned long ip)
{
 return virt_addr_valid(ip) && kernel_ip(ip);
}
