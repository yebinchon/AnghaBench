
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_isa_bridge {int flags; int udma_mask; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int dma_mode; } ;
struct TYPE_2__ {struct via_isa_bridge* private_data; } ;


 int VIA_BAD_AST ;
 int via_do_set_mode (struct ata_port*,struct ata_device*,int ,int,int ) ;

__attribute__((used)) static void via_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 const struct via_isa_bridge *config = ap->host->private_data;
 int set_ast = (config->flags & VIA_BAD_AST) ? 0 : 1;

 via_do_set_mode(ap, adev, adev->dma_mode, set_ast, config->udma_mask);
}
