
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int gtoffset_mask; } ;


 int back_to_back_c0_hazard () ;
 int read_c0_gtoffset () ;
 int write_c0_gtoffset (int) ;

__attribute__((used)) static inline void cpu_probe_gtoffset(struct cpuinfo_mips *c)
{

 write_c0_gtoffset(0xffffffff);
 back_to_back_c0_hazard();
 c->gtoffset_mask = read_c0_gtoffset();
 write_c0_gtoffset(0);
}
