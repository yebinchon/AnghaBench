
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct memory_block*) ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static void memory_block_release(struct device *dev)
{
 struct memory_block *mem = to_memory_block(dev);

 kfree(mem);
}
