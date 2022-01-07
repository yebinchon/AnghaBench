
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static size_t order_to_size(unsigned int order)
{
 return (size_t)PAGE_SIZE << order;
}
