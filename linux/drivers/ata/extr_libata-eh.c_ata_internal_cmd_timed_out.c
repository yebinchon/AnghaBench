
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ata_eh_context {int** cmd_timeout_idx; } ;
struct ata_device {size_t devno; TYPE_1__* link; } ;
struct TYPE_4__ {scalar_t__* timeouts; } ;
struct TYPE_3__ {struct ata_eh_context eh_context; } ;


 scalar_t__ ULONG_MAX ;
 TYPE_2__* ata_eh_cmd_timeout_table ;
 int ata_lookup_timeout_table (int ) ;

void ata_internal_cmd_timed_out(struct ata_device *dev, u8 cmd)
{
 struct ata_eh_context *ehc = &dev->link->eh_context;
 int ent = ata_lookup_timeout_table(cmd);
 int idx;

 if (ent < 0)
  return;

 idx = ehc->cmd_timeout_idx[dev->devno][ent];
 if (ata_eh_cmd_timeout_table[ent].timeouts[idx + 1] != ULONG_MAX)
  ehc->cmd_timeout_idx[dev->devno][ent]++;
}
