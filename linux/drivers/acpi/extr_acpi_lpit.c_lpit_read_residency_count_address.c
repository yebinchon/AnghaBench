
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ address; } ;
struct TYPE_4__ {TYPE_1__ gaddr; } ;


 int EINVAL ;
 TYPE_2__ residency_info_mem ;

int lpit_read_residency_count_address(u64 *address)
{
 if (!residency_info_mem.gaddr.address)
  return -EINVAL;

 *address = residency_info_mem.gaddr.address;

 return 0;
}
