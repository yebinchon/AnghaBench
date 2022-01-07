
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int DPRINTK (char*) ;
 int sata_pmp_error_handler (struct ata_port*) ;

__attribute__((used)) static void sata_fsl_error_handler(struct ata_port *ap)
{

 DPRINTK("in xx_error_handler\n");
 sata_pmp_error_handler(ap);

}
