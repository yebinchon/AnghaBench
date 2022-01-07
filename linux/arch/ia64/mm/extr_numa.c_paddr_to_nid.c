
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long start_paddr; unsigned long size; int nid; } ;


 TYPE_1__* node_memblk ;
 int num_node_memblks ;

int
paddr_to_nid(unsigned long paddr)
{
 int i;

 for (i = 0; i < num_node_memblks; i++)
  if (paddr >= node_memblk[i].start_paddr &&
      paddr < node_memblk[i].start_paddr + node_memblk[i].size)
   break;

 return (i < num_node_memblks) ? node_memblk[i].nid : (num_node_memblks ? -1 : 0);
}
