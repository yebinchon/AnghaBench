
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 int PAGE_SIZE ;

__attribute__((used)) static resource_size_t pnv_pci_default_alignment(void)
{
 return PAGE_SIZE;
}
