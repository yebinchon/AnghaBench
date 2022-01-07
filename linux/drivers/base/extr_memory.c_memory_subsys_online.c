
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ state; int online_type; } ;
struct device {int dummy; } ;


 int MEM_OFFLINE ;
 scalar_t__ MEM_ONLINE ;
 int MMOP_ONLINE_KEEP ;
 int memory_block_change_state (struct memory_block*,scalar_t__,int ) ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static int memory_subsys_online(struct device *dev)
{
 struct memory_block *mem = to_memory_block(dev);
 int ret;

 if (mem->state == MEM_ONLINE)
  return 0;






 if (mem->online_type < 0)
  mem->online_type = MMOP_ONLINE_KEEP;

 ret = memory_block_change_state(mem, MEM_ONLINE, MEM_OFFLINE);


 mem->online_type = -1;

 return ret;
}
