
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int UV_BIOS_GET_PARTITION_ADDR ;
 int uv_bios_call_irqsave (int ,int ,int ,int ,int ,int ) ;

s64
uv_bios_reserved_page_pa(u64 buf, u64 *cookie, u64 *addr, u64 *len)
{
 return uv_bios_call_irqsave(UV_BIOS_GET_PARTITION_ADDR, (u64)cookie,
        (u64)addr, buf, (u64)len, 0);
}
