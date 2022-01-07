
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum cpumf_ctr_set { ____Placeholder_cpumf_ctr_set } cpumf_ctr_set ;


 int CPUMF_CTR_SET_BASIC ;
 int CPUMF_CTR_SET_CRYPTO ;
 int CPUMF_CTR_SET_EXT ;
 int CPUMF_CTR_SET_MAX ;
 int CPUMF_CTR_SET_MT_DIAG ;
 int CPUMF_CTR_SET_USER ;

__attribute__((used)) static enum cpumf_ctr_set get_counter_set(u64 event)
{
 int set = CPUMF_CTR_SET_MAX;

 if (event < 32)
  set = CPUMF_CTR_SET_BASIC;
 else if (event < 64)
  set = CPUMF_CTR_SET_USER;
 else if (event < 128)
  set = CPUMF_CTR_SET_CRYPTO;
 else if (event < 288)
  set = CPUMF_CTR_SET_EXT;
 else if (event >= 448 && event < 496)
  set = CPUMF_CTR_SET_MT_DIAG;

 return set;
}
