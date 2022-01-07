
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t loader_command ;
struct TYPE_5__ {void* result; void* valid; void* command; } ;
typedef TYPE_1__ loader_block ;
typedef int amb_dev ;


 size_t COMMAND_IN_PROGRESS ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_LOAD ;
 size_t DMA_VALID ;
 int ETIMEDOUT ;
 int PRINTD (int,char*,...) ;
 size_t adapter_start ;
 int amb_mem ;
 size_t be32_to_cpu (void*) ;
 int* command_timeouts ;
 void* cpu_to_be32 (size_t) ;
 int decode_loader_result (size_t,size_t) ;
 int doorbell ;
 int dump_loader_block (TYPE_1__ volatile*) ;
 int dump_registers (int const*) ;
 unsigned long msleep_interruptible (unsigned long) ;
 int offsetof (int ,int ) ;
 int onegigmask ;
 scalar_t__ rd_plain (int const*,int ) ;
 int virt_to_bus (TYPE_1__ volatile*) ;
 int wr_mem (int const*,int ,int) ;

__attribute__((used)) static int do_loader_command(volatile loader_block *lb, const amb_dev *dev,
        loader_command cmd)
{

  unsigned long timeout;

  PRINTD (DBG_FLOW|DBG_LOAD, "do_loader_command");
  lb->result = 0;
  lb->command = cpu_to_be32 (cmd);
  lb->valid = cpu_to_be32 (DMA_VALID);


  wr_mem (dev, offsetof(amb_mem, doorbell), virt_to_bus (lb) & ~onegigmask);

  timeout = command_timeouts[cmd] * 10;

  while (!lb->result || lb->result == cpu_to_be32 (COMMAND_IN_PROGRESS))
    if (timeout) {
      timeout = msleep_interruptible(timeout);
    } else {
      PRINTD (DBG_LOAD|DBG_ERR, "command %d timed out", cmd);
      dump_registers (dev);
      dump_loader_block (lb);
      return -ETIMEDOUT;
    }

  if (cmd == adapter_start) {

    timeout = 100;
    while (rd_plain (dev, offsetof(amb_mem, doorbell)))
      if (timeout) {
 timeout = msleep_interruptible(timeout);
      } else {
 PRINTD (DBG_LOAD|DBG_ERR, "start command did not clear doorbell, res=%08x",
  be32_to_cpu (lb->result));
 dump_registers (dev);
 return -ETIMEDOUT;
      }
    return 0;
  } else {
    return decode_loader_result (cmd, be32_to_cpu (lb->result));
  }

}
