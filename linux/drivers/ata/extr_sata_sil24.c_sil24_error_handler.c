
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil24_port_priv {scalar_t__ do_port_rst; } ;
struct ata_port {struct sil24_port_priv* private_data; } ;


 int ata_eh_freeze_port (struct ata_port*) ;
 int sata_pmp_error_handler (struct ata_port*) ;
 scalar_t__ sil24_init_port (struct ata_port*) ;

__attribute__((used)) static void sil24_error_handler(struct ata_port *ap)
{
 struct sil24_port_priv *pp = ap->private_data;

 if (sil24_init_port(ap))
  ata_eh_freeze_port(ap);

 sata_pmp_error_handler(ap);

 pp->do_port_rst = 0;
}
