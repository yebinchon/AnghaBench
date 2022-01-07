
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EmulateCPDO (unsigned int) ;
 unsigned int EmulateCPDT (unsigned int) ;
 unsigned int EmulateCPRT (unsigned int) ;
 int printk (char*,unsigned int) ;

unsigned int EmulateAll(unsigned int opcode)
{
 unsigned int code;




 code = opcode & 0x00000f00;
 if (code == 0x00000100 || code == 0x00000200) {

  code = opcode & 0x0e000000;
  if (code == 0x0e000000) {
   if (opcode & 0x00000010) {



    return EmulateCPRT(opcode);
   } else {


    return EmulateCPDO(opcode);
   }
  } else if (code == 0x0c000000) {


   return EmulateCPDT(opcode);
  }
 }


 return 0;
}
