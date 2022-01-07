
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int chip_id; } ;
struct TYPE_5__ {int xstop_reason; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ xstop_error; } ;
struct OpalHMIEvent {TYPE_3__ u; } ;
typedef int reason ;


 int be32_to_cpu (int ) ;
 int printk (char*,char const*,int ,...) ;

__attribute__((used)) static void print_npu_checkstop_reason(const char *level,
     struct OpalHMIEvent *hmi_evt)
{
 uint8_t reason, reason_count, i;





 if (!hmi_evt->u.xstop_error.xstop_reason) {
  printk("%s	NPU checkstop on chip %x\n", level,
   be32_to_cpu(hmi_evt->u.xstop_error.u.chip_id));
  return;
 }
 reason_count = sizeof(hmi_evt->u.xstop_error.xstop_reason) /
  sizeof(reason);
 for (i = 0; i < reason_count; i++) {
  reason = (hmi_evt->u.xstop_error.xstop_reason >> (8 * i)) & 0xFF;
  if (reason)
   printk("%s	NPU checkstop on chip %x: FIR%d bit %d is set\n",
    level,
    be32_to_cpu(hmi_evt->u.xstop_error.u.chip_id),
    reason >> 6, reason & 0x3F);
 }
}
