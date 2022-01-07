
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool overlaps(unsigned long r1_start, unsigned long r1_end,
       unsigned long r2_start, unsigned long r2_end)
{
 return (r1_start <= r2_end && r1_end >= r2_start) ||
  (r2_start <= r1_end && r2_end >= r1_start);
}
