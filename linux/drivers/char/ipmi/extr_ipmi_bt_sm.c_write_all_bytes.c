
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {int write_count; int * write_data; int seq; TYPE_1__* io; } ;
struct TYPE_2__ {int dev; } ;


 int BT_DEBUG_MSG ;
 int HOST2BMC (int ) ;
 int bt_debug ;
 int dev_dbg (int ,char*,int,int ) ;
 int pr_cont (char*,...) ;

__attribute__((used)) static inline void write_all_bytes(struct si_sm_data *bt)
{
 int i;

 if (bt_debug & BT_DEBUG_MSG) {
  dev_dbg(bt->io->dev, "write %d bytes seq=0x%02X",
   bt->write_count, bt->seq);
  for (i = 0; i < bt->write_count; i++)
   pr_cont(" %02x", bt->write_data[i]);
  pr_cont("\n");
 }
 for (i = 0; i < bt->write_count; i++)
  HOST2BMC(bt->write_data[i]);
}
