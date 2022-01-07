
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tpm_space {int* context_tbl; } ;
typedef int __be32 ;


 int ARRAY_SIZE (int*) ;
 int be32_to_cpup (int *) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static bool tpm2_map_to_phandle(struct tpm_space *space, void *handle)
{
 u32 vhandle = be32_to_cpup((__be32 *)handle);
 u32 phandle;
 int i;

 i = 0xFFFFFF - (vhandle & 0xFFFFFF);
 if (i >= ARRAY_SIZE(space->context_tbl) || !space->context_tbl[i])
  return 0;

 phandle = space->context_tbl[i];
 *((__be32 *)handle) = cpu_to_be32(phandle);
 return 1;
}
