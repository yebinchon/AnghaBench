
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static int eeh_result_priority(enum pci_ers_result result)
{
 switch (result) {
 case 130:
  return 1;
 case 129:
  return 2;
 case 128:
  return 3;
 case 133:
  return 4;
 case 132:
  return 5;
 case 131:
  return 6;
 default:
  WARN_ONCE(1, "Unknown pci_ers_result value: %d\n", (int)result);
  return 0;
 }
}
