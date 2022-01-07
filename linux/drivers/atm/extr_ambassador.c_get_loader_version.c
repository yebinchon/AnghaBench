
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int version; } ;
struct TYPE_6__ {TYPE_1__ payload; } ;
typedef TYPE_2__ loader_block ;
typedef int amb_dev ;


 int DBG_FLOW ;
 int DBG_LOAD ;
 int PRINTD (int,char*) ;
 int be32_to_cpu (int ) ;
 int do_loader_command (TYPE_2__*,int const*,int ) ;
 int get_version_number ;

__attribute__((used)) static int get_loader_version(loader_block *lb, const amb_dev *dev,
         u32 *version)
{
  int res;

  PRINTD (DBG_FLOW|DBG_LOAD, "get_loader_version");

  res = do_loader_command (lb, dev, get_version_number);
  if (res)
    return res;
  if (version)
    *version = be32_to_cpu (lb->payload.version);
  return 0;
}
