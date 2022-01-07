
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iowrite8 (unsigned char,scalar_t__) ;
 int mmio_nvram_len ;
 int mmio_nvram_lock ;
 scalar_t__ mmio_nvram_start ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mmio_nvram_write_val(int addr, unsigned char val)
{
 unsigned long flags;

 if (addr < mmio_nvram_len) {
  spin_lock_irqsave(&mmio_nvram_lock, flags);

  iowrite8(val, mmio_nvram_start + addr);

  spin_unlock_irqrestore(&mmio_nvram_lock, flags);
 }
}
