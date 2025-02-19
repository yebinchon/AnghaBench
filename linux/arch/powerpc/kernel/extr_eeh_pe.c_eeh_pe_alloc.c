
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;
struct eeh_pe {int type; void* data; int edevs; int child_list; struct pci_controller* phb; } ;


 size_t ALIGN (int,int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cache_line_size () ;
 scalar_t__ eeh_pe_aux_size ;
 struct eeh_pe* kzalloc (size_t,int ) ;

__attribute__((used)) static struct eeh_pe *eeh_pe_alloc(struct pci_controller *phb, int type)
{
 struct eeh_pe *pe;
 size_t alloc_size;

 alloc_size = sizeof(struct eeh_pe);
 if (eeh_pe_aux_size) {
  alloc_size = ALIGN(alloc_size, cache_line_size());
  alloc_size += eeh_pe_aux_size;
 }


 pe = kzalloc(alloc_size, GFP_KERNEL);
 if (!pe) return ((void*)0);


 pe->type = type;
 pe->phb = phb;
 INIT_LIST_HEAD(&pe->child_list);
 INIT_LIST_HEAD(&pe->edevs);

 pe->data = (void *)pe + ALIGN(sizeof(struct eeh_pe),
          cache_line_size());
 return pe;
}
