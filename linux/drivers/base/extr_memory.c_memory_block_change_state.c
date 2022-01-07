
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {unsigned long state; int online_type; int start_section_nr; } ;


 int EINVAL ;
 unsigned long MEM_GOING_OFFLINE ;
 unsigned long MEM_OFFLINE ;
 int memory_block_action (int ,unsigned long,int ) ;

__attribute__((used)) static int memory_block_change_state(struct memory_block *mem,
  unsigned long to_state, unsigned long from_state_req)
{
 int ret = 0;

 if (mem->state != from_state_req)
  return -EINVAL;

 if (to_state == MEM_OFFLINE)
  mem->state = MEM_GOING_OFFLINE;

 ret = memory_block_action(mem->start_section_nr, to_state,
    mem->online_type);

 mem->state = ret ? from_state_req : to_state;

 return ret;
}
