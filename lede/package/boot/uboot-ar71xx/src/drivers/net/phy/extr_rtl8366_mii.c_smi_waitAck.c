
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ smi_readBits (int) ;

__attribute__((used)) static int smi_waitAck(void)
{
    uint32_t retry = 0;

 while (smi_readBits(1)) {
  if (retry++ == 5)
   return -1;
 }

 return 0;

}
