
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct rtl8366_smi {int dummy; } ;
struct TYPE_2__ {int base; int offset; int length; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int RTL8366S_MIB_COUNT ;
 int RTL8366S_MIB_COUNTER_BASE ;
 int RTL8366S_MIB_COUNTER_BASE2 ;
 int RTL8366S_MIB_COUNTER_PORT_OFFSET ;
 int RTL8366S_MIB_COUNTER_PORT_OFFSET2 ;
 int RTL8366S_MIB_CTRL_BUSY_MASK ;
 int RTL8366S_MIB_CTRL_REG ;
 int RTL8366S_MIB_CTRL_RESET_MASK ;
 int RTL8366S_NUM_PORTS ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int,int*) ;
 int rtl8366_smi_write_reg (struct rtl8366_smi*,int,int) ;
 TYPE_1__* rtl8366s_mib_counters ;

__attribute__((used)) static int rtl8366_get_mib_counter(struct rtl8366_smi *smi, int counter,
       int port, unsigned long long *val)
{
 int i;
 int err;
 u32 addr, data;
 u64 mibvalue;

 if (port > RTL8366S_NUM_PORTS || counter >= RTL8366S_MIB_COUNT)
  return -EINVAL;

 switch (rtl8366s_mib_counters[counter].base) {
 case 0:
  addr = RTL8366S_MIB_COUNTER_BASE +
         RTL8366S_MIB_COUNTER_PORT_OFFSET * port;
  break;

 case 1:
  addr = RTL8366S_MIB_COUNTER_BASE2 +
   RTL8366S_MIB_COUNTER_PORT_OFFSET2 * port;
  break;

 default:
  return -EINVAL;
 }

 addr += rtl8366s_mib_counters[counter].offset;





 data = 0;
 err = rtl8366_smi_write_reg(smi, addr, data);
 if (err)
  return err;


 err = rtl8366_smi_read_reg(smi, RTL8366S_MIB_CTRL_REG, &data);
 if (err)
  return err;

 if (data & RTL8366S_MIB_CTRL_BUSY_MASK)
  return -EBUSY;

 if (data & RTL8366S_MIB_CTRL_RESET_MASK)
  return -EIO;

 mibvalue = 0;
 for (i = rtl8366s_mib_counters[counter].length; i > 0; i--) {
  err = rtl8366_smi_read_reg(smi, addr + (i - 1), &data);
  if (err)
   return err;

  mibvalue = (mibvalue << 16) | (data & 0xFFFF);
 }

 *val = mibvalue;
 return 0;
}
