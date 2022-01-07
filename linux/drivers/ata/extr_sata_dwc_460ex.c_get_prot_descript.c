
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *get_prot_descript(u8 protocol)
{
 switch (protocol) {
 case 129:
  return "ATA no data";
 case 128:
  return "ATA PIO";
 case 132:
  return "ATA DMA";
 case 131:
  return "ATA NCQ";
 case 130:
  return "ATA NCQ no data";
 case 134:
  return "ATAPI no data";
 case 133:
  return "ATAPI PIO";
 case 135:
  return "ATAPI DMA";
 default:
  return "unknown";
 }
}
