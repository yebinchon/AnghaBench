
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PDC_FLAG_4_PORTS ;
 unsigned long PDC_FLAG_GEN_II ;

__attribute__((used)) static int pdc_is_sataii_tx4(unsigned long flags)
{
 const unsigned long mask = PDC_FLAG_GEN_II | PDC_FLAG_4_PORTS;
 return (flags & mask) == mask;
}
