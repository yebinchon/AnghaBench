
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int command; } ;
struct TYPE_2__ {int command_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int rb153_pata_finish_io (struct ata_port*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void rb153_pata_exec_command(struct ata_port *ap,
     const struct ata_taskfile *tf)
{
 writeb(tf->command, ap->ioaddr.command_addr);
 rb153_pata_finish_io(ap);
}
