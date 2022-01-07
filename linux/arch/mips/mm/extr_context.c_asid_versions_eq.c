
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int asid_version_mask (int) ;

__attribute__((used)) static bool asid_versions_eq(int cpu, u64 a, u64 b)
{
 return ((a ^ b) & asid_version_mask(cpu)) == 0;
}
