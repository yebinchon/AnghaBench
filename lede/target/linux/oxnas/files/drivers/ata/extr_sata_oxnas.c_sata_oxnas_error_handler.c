
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int host; int port_no; } ;


 int DPRINTK (char*,int ) ;
 int ata_std_error_handler (struct ata_port*) ;
 int sata_oxnas_cleanup (int ) ;
 int sata_oxnas_freeze_host (struct ata_port*) ;
 int sata_oxnas_thaw_host (struct ata_port*) ;

__attribute__((used)) static void sata_oxnas_error_handler(struct ata_port *ap)
{
 DPRINTK("Enter port_no %d\n", ap->port_no);
 sata_oxnas_freeze_host(ap);


 sata_oxnas_cleanup(ap->host);

 ata_std_error_handler(ap);

 sata_oxnas_thaw_host(ap);
}
