
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct memtype {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 struct memtype* memtype_rb_lowest_match (int *,scalar_t__,scalar_t__) ;
 int memtype_rbroot ;

struct memtype *rbt_memtype_lookup(u64 addr)
{
 return memtype_rb_lowest_match(&memtype_rbroot, addr, addr + PAGE_SIZE);
}
