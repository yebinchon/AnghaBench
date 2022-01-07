
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tboot_pg_dir ;
 int virt_to_phys (int ) ;
 int write_cr3 (int ) ;

__attribute__((used)) static inline void switch_to_tboot_pt(void)
{
 write_cr3(virt_to_phys(tboot_pg_dir));
}
