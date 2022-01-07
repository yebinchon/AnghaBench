
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int command; } ;
struct TYPE_2__ {int command_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int host; } ;


 int ata_outb (int ,int ,int ) ;
 int ata_sff_pause (struct ata_port*) ;

__attribute__((used)) static void pata_s3c_exec_command(struct ata_port *ap,
    const struct ata_taskfile *tf)
{
 ata_outb(ap->host, tf->command, ap->ioaddr.command_addr);
 ata_sff_pause(ap);
}
