
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __opal_lpc_outl (int ,unsigned long) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void opal_lpc_outl(u32 val, unsigned long port)
{
 __opal_lpc_outl(cpu_to_le32(val), port);
}
