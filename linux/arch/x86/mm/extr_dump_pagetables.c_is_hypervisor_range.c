
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUARD_HOLE_BASE_ADDR ;
 int GUARD_HOLE_END_ADDR ;
 int pgd_index (int ) ;

__attribute__((used)) static inline bool is_hypervisor_range(int idx)
{
 return 0;

}
