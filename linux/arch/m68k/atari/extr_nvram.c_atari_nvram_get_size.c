
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int NVRAM_BYTES ;

ssize_t atari_nvram_get_size(void)
{
 return NVRAM_BYTES;
}
