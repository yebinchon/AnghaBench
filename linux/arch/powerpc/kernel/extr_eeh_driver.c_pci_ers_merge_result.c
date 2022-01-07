
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;


 scalar_t__ eeh_result_priority (int) ;

__attribute__((used)) static enum pci_ers_result pci_ers_merge_result(enum pci_ers_result old,
      enum pci_ers_result new)
{
 if (eeh_result_priority(new) > eeh_result_priority(old))
  return new;
 return old;
}
