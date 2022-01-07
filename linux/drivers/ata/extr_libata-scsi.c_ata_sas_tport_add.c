
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ata_port {int dummy; } ;


 int ata_tport_add (struct device*,struct ata_port*) ;

int ata_sas_tport_add(struct device *parent, struct ata_port *ap)
{
 return ata_tport_add(parent, ap);
}
