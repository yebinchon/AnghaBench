
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snr_mmio_uncores ;
 int uncore_mmio_uncores ;

void snr_uncore_mmio_init(void)
{
 uncore_mmio_uncores = snr_mmio_uncores;
}
