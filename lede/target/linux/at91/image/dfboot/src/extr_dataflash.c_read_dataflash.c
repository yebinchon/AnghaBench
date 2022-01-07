
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ AT91PS_DataFlash ;


 int AT91F_DataFlashRead (scalar_t__,unsigned int,unsigned long,char*) ;
 scalar_t__ AT91F_DataflashSelect (scalar_t__,unsigned int*) ;
 int DataFlashInst ;

int read_dataflash(unsigned long addr, unsigned long size, char *result)
{
 unsigned int AddrToRead = addr;
 AT91PS_DataFlash pFlash = &DataFlashInst;

 pFlash = AT91F_DataflashSelect (pFlash, &AddrToRead);
 if (pFlash == 0)
  return -1;

 return (AT91F_DataFlashRead(pFlash, AddrToRead, size, result));
}
