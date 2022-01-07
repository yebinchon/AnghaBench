
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bus; } ;
struct memory_block {TYPE_1__ dev; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int device_unregister (TYPE_1__*) ;
 int memory_subsys ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static void unregister_memory(struct memory_block *memory)
{
 if (WARN_ON_ONCE(memory->dev.bus != &memory_subsys))
  return;


 put_device(&memory->dev);
 device_unregister(&memory->dev);
}
