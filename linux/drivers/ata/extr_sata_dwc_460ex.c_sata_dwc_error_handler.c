
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_sff_error_handler (struct ata_port*) ;

__attribute__((used)) static void sata_dwc_error_handler(struct ata_port *ap)
{
 ata_sff_error_handler(ap);
}
