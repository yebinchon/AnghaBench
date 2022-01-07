
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* nvram_image ;

__attribute__((used)) static unsigned char core99_nvram_read_byte(int addr)
{
 if (nvram_image == ((void*)0))
  return 0xff;
 return nvram_image[addr];
}
