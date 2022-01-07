
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ioremap_desc {int dummy; } ;
typedef scalar_t__ resource_size_t ;


 int __ioremap_collect_map_flags ;
 int memset (struct ioremap_desc*,int ,int) ;
 int walk_mem_res (scalar_t__,scalar_t__,struct ioremap_desc*,int ) ;

__attribute__((used)) static void __ioremap_check_mem(resource_size_t addr, unsigned long size,
    struct ioremap_desc *desc)
{
 u64 start, end;

 start = (u64)addr;
 end = start + size - 1;
 memset(desc, 0, sizeof(struct ioremap_desc));

 walk_mem_res(start, end, desc, __ioremap_collect_map_flags);
}
