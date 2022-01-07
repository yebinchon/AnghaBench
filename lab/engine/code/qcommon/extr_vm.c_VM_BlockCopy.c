
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dataMask; scalar_t__ dataBase; } ;


 int Com_Error (int ,char*) ;
 int Com_Memcpy (scalar_t__,scalar_t__,size_t) ;
 int ERR_DROP ;
 TYPE_1__* currentVM ;

void VM_BlockCopy(unsigned int dest, unsigned int src, size_t n)
{
 unsigned int dataMask = currentVM->dataMask;

 if ((dest & dataMask) != dest
 || (src & dataMask) != src
 || ((dest + n) & dataMask) != dest + n
 || ((src + n) & dataMask) != src + n)
 {
  Com_Error(ERR_DROP, "OP_BLOCK_COPY out of range!");
 }

 Com_Memcpy(currentVM->dataBase + dest, currentVM->dataBase + src, n);
}
