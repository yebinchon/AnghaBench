
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CONFIG_PPC_PSERIES ;
 int FW_FEATURE_LPAR ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ firmware_has_feature (int ) ;
 int native_find (unsigned long,int,int,int *,int *) ;
 int pseries_find (unsigned long,int,int,int *,int *) ;

__attribute__((used)) static int base_hpte_find(unsigned long ea, int psize, bool primary, u64 *v,
     u64 *r)
{
 if (IS_ENABLED(CONFIG_PPC_PSERIES) && firmware_has_feature(FW_FEATURE_LPAR))
  return pseries_find(ea, psize, primary, v, r);

 return native_find(ea, psize, primary, v, r);
}
