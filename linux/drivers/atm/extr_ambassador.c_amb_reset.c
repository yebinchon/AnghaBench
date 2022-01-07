
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int amb_dev ;
struct TYPE_3__ {int result; int ready; } ;
struct TYPE_4__ {TYPE_1__ loader; } ;


 int AMB_DOORBELL_BITS ;
 int AMB_RESET_BITS ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_LOAD ;
 int EIO ;
 int ETIMEDOUT ;
 int GPINT_TST_FAILURE ;
 int PRINTD (int,char*) ;
 int SELF_TEST_FAILURE ;
 int SRAM_FAILURE ;
 int SUNI_DATA_BITS_FAILURE ;
 int SUNI_DATA_PATTERN_FAILURE ;
 int SUNI_FIFO_FAILURE ;
 int SUNI_UTOPIA_FAILURE ;
 int amb_mem ;
 int interrupt ;
 int interrupt_control ;
 TYPE_2__ mb ;
 int msleep (int) ;
 unsigned long msleep_interruptible (unsigned long) ;
 int offsetof (int ,int ) ;
 int rd_mem (int *,int ) ;
 int rd_plain (int *,int ) ;
 int reset_control ;
 int sf (char*) ;
 int udelay (int) ;
 int wr_plain (int *,int ,int) ;

__attribute__((used)) static int amb_reset (amb_dev * dev, int diags) {
  u32 word;

  PRINTD (DBG_FLOW|DBG_LOAD, "amb_reset");

  word = rd_plain (dev, offsetof(amb_mem, reset_control));

  wr_plain (dev, offsetof(amb_mem, reset_control), word | AMB_RESET_BITS);

  udelay (10);


  wr_plain (dev, offsetof(amb_mem, interrupt_control), AMB_DOORBELL_BITS);

  wr_plain (dev, offsetof(amb_mem, interrupt), -1);


  wr_plain (dev, offsetof(amb_mem, mb.loader.ready), 0);

  wr_plain (dev, offsetof(amb_mem, reset_control), word &~ AMB_RESET_BITS);

  if (diags) {
    unsigned long timeout;

    msleep(4200);

    timeout = 500;
    while (!rd_plain (dev, offsetof(amb_mem, mb.loader.ready)))
      if (timeout) {
 timeout = msleep_interruptible(timeout);
      } else {
 PRINTD (DBG_LOAD|DBG_ERR, "reset timed out");
 return -ETIMEDOUT;
      }



    word = rd_mem (dev, offsetof(amb_mem, mb.loader.result));
    if (word & SELF_TEST_FAILURE) {
      if (word & GPINT_TST_FAILURE)
 sf ("interrupt");
      if (word & SUNI_DATA_PATTERN_FAILURE)
 sf ("SUNI data pattern");
      if (word & SUNI_DATA_BITS_FAILURE)
 sf ("SUNI data bits");
      if (word & SUNI_UTOPIA_FAILURE)
 sf ("SUNI UTOPIA interface");
      if (word & SUNI_FIFO_FAILURE)
 sf ("SUNI cell buffer FIFO");
      if (word & SRAM_FAILURE)
 sf ("bad SRAM");

      return -EIO;
    }

  }
  return 0;
}
