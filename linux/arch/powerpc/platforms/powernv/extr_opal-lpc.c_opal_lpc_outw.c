
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __opal_lpc_outw (int ,unsigned long) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void opal_lpc_outw(u16 val, unsigned long port)
{
 __opal_lpc_outw(cpu_to_le16(val), port);
}
