
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int adma_reset_engine (struct ata_port*) ;

__attribute__((used)) static void adma_port_stop(struct ata_port *ap)
{
 adma_reset_engine(ap);
}
