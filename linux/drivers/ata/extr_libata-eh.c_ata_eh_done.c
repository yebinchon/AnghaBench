
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_eh_context {int i; } ;
struct ata_link {struct ata_eh_context eh_context; } ;
struct ata_device {int dummy; } ;


 int ata_eh_clear_action (struct ata_link*,struct ata_device*,int *,unsigned int) ;

void ata_eh_done(struct ata_link *link, struct ata_device *dev,
   unsigned int action)
{
 struct ata_eh_context *ehc = &link->eh_context;

 ata_eh_clear_action(link, dev, &ehc->i, action);
}
