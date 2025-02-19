
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_6__ {unsigned long long bit_offset; scalar_t__ bit_width; int address; } ;
struct TYPE_8__ {int frequency; TYPE_2__ gaddr; } ;
struct TYPE_5__ {int bit_width; } ;
struct TYPE_7__ {int frequency; TYPE_1__ gaddr; int iomem_addr; } ;


 int ENODATA ;
 unsigned long long GENMASK_ULL (scalar_t__,unsigned long long) ;
 int acpi_os_read_iomem (int ,unsigned long long*,int ) ;
 unsigned long long div64_u64 (unsigned long long,int ) ;
 int rdmsrl_safe (int ,unsigned long long*) ;
 TYPE_4__ residency_info_ffh ;
 TYPE_3__ residency_info_mem ;

__attribute__((used)) static int lpit_read_residency_counter_us(u64 *counter, bool io_mem)
{
 int err;

 if (io_mem) {
  u64 count = 0;
  int error;

  error = acpi_os_read_iomem(residency_info_mem.iomem_addr, &count,
        residency_info_mem.gaddr.bit_width);
  if (error)
   return error;

  *counter = div64_u64(count * 1000000ULL, residency_info_mem.frequency);
  return 0;
 }

 err = rdmsrl_safe(residency_info_ffh.gaddr.address, counter);
 if (!err) {
  u64 mask = GENMASK_ULL(residency_info_ffh.gaddr.bit_offset +
           residency_info_ffh.gaddr. bit_width - 1,
           residency_info_ffh.gaddr.bit_offset);

  *counter &= mask;
  *counter >>= residency_info_ffh.gaddr.bit_offset;
  *counter = div64_u64(*counter * 1000000ULL, residency_info_ffh.frequency);
  return 0;
 }

 return -ENODATA;
}
