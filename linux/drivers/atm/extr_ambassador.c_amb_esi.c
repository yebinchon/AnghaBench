
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int upper2; int lower4; } ;
struct TYPE_6__ {TYPE_1__ bia; } ;
struct TYPE_7__ {TYPE_2__ args; int request; } ;
typedef TYPE_3__ command ;
typedef int amb_dev ;


 int DBG_INIT ;
 int DBG_LOAD ;
 unsigned int ESI_LEN ;
 int PRINTD (int ,char*,int,int) ;
 int PRINTDB (int ,char*) ;
 int PRINTDE (int ,char*) ;
 int PRINTDM (int ,char*,int ) ;
 int SRB_GET_BIA ;
 int TASK_UNINTERRUPTIBLE ;
 int be32_to_cpu (int ) ;
 int bitrev8 (int) ;
 scalar_t__ command_do (int *,TYPE_3__*) ;
 int cpu_to_be32 (int ) ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static void amb_esi(amb_dev *dev, u8 *esi)
{
  u32 lower4;
  u16 upper2;
  command cmd;

  cmd.request = cpu_to_be32 (SRB_GET_BIA);
  while (command_do (dev, &cmd)) {
    set_current_state(TASK_UNINTERRUPTIBLE);
    schedule();
  }
  lower4 = be32_to_cpu (cmd.args.bia.lower4);
  upper2 = be32_to_cpu (cmd.args.bia.upper2);
  PRINTD (DBG_LOAD, "BIA: lower4: %08x, upper2 %04x", lower4, upper2);

  if (esi) {
    unsigned int i;

    PRINTDB (DBG_INIT, "ESI:");
    for (i = 0; i < ESI_LEN; ++i) {
      if (i < 4)
   esi[i] = bitrev8(lower4>>(8*i));
      else
   esi[i] = bitrev8(upper2>>(8*(i-4)));
      PRINTDM (DBG_INIT, " %02x", esi[i]);
    }

    PRINTDE (DBG_INIT, "");
  }

  return;
}
