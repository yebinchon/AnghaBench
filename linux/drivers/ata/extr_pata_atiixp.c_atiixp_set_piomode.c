
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {scalar_t__ pio_mode; } ;


 scalar_t__ XFER_PIO_0 ;
 int atiixp_lock ;
 int atiixp_set_pio_timing (struct ata_port*,struct ata_device*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atiixp_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 unsigned long flags;
 spin_lock_irqsave(&atiixp_lock, flags);
 atiixp_set_pio_timing(ap, adev, adev->pio_mode - XFER_PIO_0);
 spin_unlock_irqrestore(&atiixp_lock, flags);
}
