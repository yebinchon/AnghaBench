
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int reg ;


 scalar_t__ FIRMWARE_DEFAULT_SIZE ;
 scalar_t__ MEM2_TOP ;
 int fatal (char*) ;
 void* finddevice (char*) ;
 int getprop (void*,char*,scalar_t__*,int) ;
 int mipc_get_mem2_boundary (scalar_t__*) ;
 int printf (char*,scalar_t__) ;
 int setprop (void*,char*,scalar_t__*,int) ;

__attribute__((used)) static void platform_fixups(void)
{
 void *mem;
 u32 reg[4];
 u32 mem2_boundary;
 int len;
 int error;

 mem = finddevice("/memory");
 if (!mem)
  fatal("Can't find memory node\n");


 len = getprop(mem, "reg", reg, sizeof(reg));
 if (len != sizeof(reg)) {

  goto out;
 }


 error = mipc_get_mem2_boundary(&mem2_boundary);
 if (error) {

  mem2_boundary = MEM2_TOP - FIRMWARE_DEFAULT_SIZE;
 }

 if (mem2_boundary > reg[2] && mem2_boundary < reg[2] + reg[3]) {
  reg[3] = mem2_boundary - reg[2];
  printf("top of MEM2 @ %08X\n", reg[2] + reg[3]);
  setprop(mem, "reg", reg, sizeof(reg));
 }

out:
 return;
}
