
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int start; } ;
struct TYPE_6__ {TYPE_1__ payload; } ;
typedef TYPE_2__ loader_block ;
typedef int amb_dev ;


 int DBG_FLOW ;
 int DBG_LOAD ;
 int PRINTD (int,char*) ;
 int adapter_start ;
 int cpu_to_be32 (int ) ;
 int do_loader_command (TYPE_2__*,int const*,int ) ;

__attribute__((used)) static int loader_start(loader_block *lb, const amb_dev *dev, u32 address)
{
  PRINTD (DBG_FLOW|DBG_LOAD, "loader_start");

  lb->payload.start = cpu_to_be32 (address);
  return do_loader_command (lb, dev, adapter_start);
}
