
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; int count; int address; } ;
typedef TYPE_2__ transfer_block ;
struct ihex_binrec {int len; int data; int addr; } ;
struct TYPE_6__ {TYPE_2__ transfer; } ;
struct TYPE_8__ {TYPE_1__ payload; } ;
typedef TYPE_3__ loader_block ;
typedef int amb_dev ;


 int DBG_FLOW ;
 int DBG_LOAD ;
 int PRINTD (int,char*) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int do_loader_command (TYPE_3__*,int const*,int ) ;
 int memcpy (int ,int ,int) ;
 int write_adapter_memory ;

__attribute__((used)) static int loader_write(loader_block *lb, const amb_dev *dev,
   const struct ihex_binrec *rec)
{
  transfer_block * tb = &lb->payload.transfer;

  PRINTD (DBG_FLOW|DBG_LOAD, "loader_write");

  tb->address = rec->addr;
  tb->count = cpu_to_be32(be16_to_cpu(rec->len) / 4);
  memcpy(tb->data, rec->data, be16_to_cpu(rec->len));
  return do_loader_command (lb, dev, write_adapter_memory);
}
