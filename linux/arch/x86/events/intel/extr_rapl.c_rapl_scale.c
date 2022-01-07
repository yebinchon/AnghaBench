
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NR_RAPL_DOMAINS ;
 int pr_warn (char*,int) ;
 int* rapl_hw_unit ;

__attribute__((used)) static inline u64 rapl_scale(u64 v, int cfg)
{
 if (cfg > NR_RAPL_DOMAINS) {
  pr_warn("Invalid domain %d, failed to scale data\n", cfg);
  return v;
 }






 return v << (32 - rapl_hw_unit[cfg - 1]);
}
