
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* nvram_image ;

__attribute__((used)) static void core99_nvram_write_byte(int addr, unsigned char val)
{
 if (nvram_image == ((void*)0))
  return;
 nvram_image[addr] = val;
}
