
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int dev; } ;


 int device_online (int *) ;

__attribute__((used)) static int online_mem_block(struct memory_block *mem, void *arg)
{
 return device_online(&mem->dev);
}
