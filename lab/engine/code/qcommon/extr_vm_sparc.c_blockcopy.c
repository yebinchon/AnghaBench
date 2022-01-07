
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int dataMask; scalar_t__ dataBase; } ;


 int DIE (char*) ;
 TYPE_1__* currentVM ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static void blockcopy(unsigned int dest, unsigned int src, unsigned int count)
{
 unsigned int dataMask = currentVM->dataMask;

 if ((dest & dataMask) != dest ||
     (src & dataMask) != src ||
     ((dest+count) & dataMask) != dest + count ||
     ((src+count) & dataMask) != src + count) {
  DIE("OP_BLOCK_COPY out of range!");
 }

 memcpy(currentVM->dataBase+dest, currentVM->dataBase+src, count);
}
