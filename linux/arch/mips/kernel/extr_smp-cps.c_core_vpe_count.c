
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_cps_numvps (unsigned int,unsigned int) ;
 scalar_t__ threads_disabled ;

__attribute__((used)) static unsigned core_vpe_count(unsigned int cluster, unsigned core)
{
 if (threads_disabled)
  return 1;

 return mips_cps_numvps(cluster, core);
}
