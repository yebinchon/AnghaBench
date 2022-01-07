
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int reg ;


 int fatal (char*) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,scalar_t__*,int) ;
 scalar_t__ ibm4xx_memstart ;
 int ibm4xx_sdram_fixup_memsize () ;

__attribute__((used)) static void iss_4xx_fixups(void)
{
 void *memory;
 u32 reg[3];

 memory = finddevice("/memory");
 if (!memory)
  fatal("Can't find memory node\n");

 getprop(memory, "reg", reg, sizeof(reg));
 if (reg[2])

  ibm4xx_memstart = reg[1];
 else

  ibm4xx_sdram_fixup_memsize();
}
