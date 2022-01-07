
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {scalar_t__ state; scalar_t__ section_count; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ MEM_OFFLINE ;
 int MEM_ONLINE ;
 int memory_block_change_state (struct memory_block*,scalar_t__,int ) ;
 scalar_t__ sections_per_block ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static int memory_subsys_offline(struct device *dev)
{
 struct memory_block *mem = to_memory_block(dev);

 if (mem->state == MEM_OFFLINE)
  return 0;


 if (mem->section_count != sections_per_block)
  return -EINVAL;

 return memory_block_change_state(mem, MEM_OFFLINE, MEM_ONLINE);
}
