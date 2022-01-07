
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int IP27_HUB_IRQ_COUNT ;
 int find_first_zero_bit (int ,int) ;
 int hub_irq_map ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static inline int alloc_level(void)
{
 int level;

again:
 level = find_first_zero_bit(hub_irq_map, IP27_HUB_IRQ_COUNT);
 if (level >= IP27_HUB_IRQ_COUNT)
  return -ENOSPC;

 if (test_and_set_bit(level, hub_irq_map))
  goto again;

 return level;
}
