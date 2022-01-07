
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {int dummy; } ;


 int VSC_SATA_INT_ERROR_M ;
 int VSC_SATA_INT_PHY_CHANGE ;
 int ata_port_abort (struct ata_port*) ;
 int ata_port_freeze (struct ata_port*) ;

__attribute__((used)) static inline void vsc_error_intr(u8 port_status, struct ata_port *ap)
{
 if (port_status & (VSC_SATA_INT_PHY_CHANGE | VSC_SATA_INT_ERROR_M))
  ata_port_freeze(ap);
 else
  ata_port_abort(ap);
}
