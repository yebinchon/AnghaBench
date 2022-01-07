
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 unsigned int sun4v_build_irq (int ,unsigned int) ;

__attribute__((used)) static unsigned int sun4v_vdev_irq_build(struct device_node *dp,
      unsigned int devino,
      void *_data)
{
 u32 devhandle = (u32) (unsigned long) _data;

 return sun4v_build_irq(devhandle, devino);
}
