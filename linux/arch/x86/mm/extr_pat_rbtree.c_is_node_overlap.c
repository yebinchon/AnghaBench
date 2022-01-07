
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct memtype {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static int is_node_overlap(struct memtype *node, u64 start, u64 end)
{
 if (node->start >= end || node->end <= start)
  return 0;

 return 1;
}
