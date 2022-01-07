
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int offline; int groups; int release; int * bus; } ;
struct memory_block {int start_section_nr; scalar_t__ state; TYPE_1__ dev; } ;


 scalar_t__ MEM_OFFLINE ;
 int device_register (TYPE_1__*) ;
 int memory_block_release ;
 int memory_memblk_attr_groups ;
 int memory_subsys ;
 int put_device (TYPE_1__*) ;
 int sections_per_block ;

__attribute__((used)) static
int register_memory(struct memory_block *memory)
{
 int ret;

 memory->dev.bus = &memory_subsys;
 memory->dev.id = memory->start_section_nr / sections_per_block;
 memory->dev.release = memory_block_release;
 memory->dev.groups = memory_memblk_attr_groups;
 memory->dev.offline = memory->state == MEM_OFFLINE;

 ret = device_register(&memory->dev);
 if (ret)
  put_device(&memory->dev);

 return ret;
}
