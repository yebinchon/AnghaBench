
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_2__ {int gbwc; void* retryto; void* trdyto; } ;


 scalar_t__ kstrtou16 (char*,int ,int *) ;
 scalar_t__ kstrtou8 (char*,int ,void**) ;
 int strncmp (char*,char*,int) ;
 TYPE_1__ tx4927_pci_opts ;

char *tx4927_pcibios_setup(char *str)
{
 if (!strncmp(str, "trdyto=", 7)) {
  u8 val = 0;
  if (kstrtou8(str + 7, 0, &val) == 0)
   tx4927_pci_opts.trdyto = val;
  return ((void*)0);
 }
 if (!strncmp(str, "retryto=", 8)) {
  u8 val = 0;
  if (kstrtou8(str + 8, 0, &val) == 0)
   tx4927_pci_opts.retryto = val;
  return ((void*)0);
 }
 if (!strncmp(str, "gbwc=", 5)) {
  u16 val;
  if (kstrtou16(str + 5, 0, &val) == 0)
   tx4927_pci_opts.gbwc = val;
  return ((void*)0);
 }
 return str;
}
