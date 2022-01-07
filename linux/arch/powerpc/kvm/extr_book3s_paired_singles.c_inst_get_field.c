
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int kvmppc_get_field (int ,int,int) ;

__attribute__((used)) static inline u32 inst_get_field(u32 inst, int msb, int lsb)
{
 return kvmppc_get_field(inst, msb + 32, lsb + 32);
}
