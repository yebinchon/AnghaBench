
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int __amd_smn_rw (int ,int ,int *,int) ;

int amd_smn_read(u16 node, u32 address, u32 *value)
{
 return __amd_smn_rw(node, address, value, 0);
}
