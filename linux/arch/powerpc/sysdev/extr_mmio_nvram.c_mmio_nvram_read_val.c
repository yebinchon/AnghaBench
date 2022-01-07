
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ioread8 (scalar_t__) ;
 int mmio_nvram_len ;
 int mmio_nvram_lock ;
 scalar_t__ mmio_nvram_start ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char mmio_nvram_read_val(int addr)
{
 unsigned long flags;
 unsigned char val;

 if (addr >= mmio_nvram_len)
  return 0xff;

 spin_lock_irqsave(&mmio_nvram_lock, flags);

 val = ioread8(mmio_nvram_start + addr);

 spin_unlock_irqrestore(&mmio_nvram_lock, flags);

 return val;
}
