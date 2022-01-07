
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool in_range(unsigned long start, unsigned long size,
 unsigned long range_start, unsigned long range_end)
{
 return start >= range_start && start < range_end &&
  size <= range_end - start;
}
