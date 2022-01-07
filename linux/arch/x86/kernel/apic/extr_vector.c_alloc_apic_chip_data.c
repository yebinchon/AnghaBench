
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apic_chip_data {int clist; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 struct apic_chip_data* kzalloc_node (int,int ,int) ;

__attribute__((used)) static struct apic_chip_data *alloc_apic_chip_data(int node)
{
 struct apic_chip_data *apicd;

 apicd = kzalloc_node(sizeof(*apicd), GFP_KERNEL, node);
 if (apicd)
  INIT_HLIST_NODE(&apicd->clist);
 return apicd;
}
