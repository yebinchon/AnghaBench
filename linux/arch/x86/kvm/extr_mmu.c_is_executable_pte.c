
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int shadow_nx_mask ;
 int shadow_x_mask ;

__attribute__((used)) static bool is_executable_pte(u64 spte)
{
 return (spte & (shadow_x_mask | shadow_nx_mask)) == shadow_x_mask;
}
