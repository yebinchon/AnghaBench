
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ PAGE_SHIFT ;

__attribute__((used)) static inline u32 xive_alloc_order(u32 queue_shift)
{
 return (queue_shift > PAGE_SHIFT) ? (queue_shift - PAGE_SHIFT) : 0;
}
