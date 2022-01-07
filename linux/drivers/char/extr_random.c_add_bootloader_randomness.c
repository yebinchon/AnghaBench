
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_RANDOM_TRUST_BOOTLOADER ;
 scalar_t__ IS_ENABLED (int ) ;
 int add_device_randomness (void const*,unsigned int) ;
 int add_hwgenerator_randomness (void const*,unsigned int,unsigned int) ;

void add_bootloader_randomness(const void *buf, unsigned int size)
{
 if (IS_ENABLED(CONFIG_RANDOM_TRUST_BOOTLOADER))
  add_hwgenerator_randomness(buf, size, size * 8);
 else
  add_device_randomness(buf, size);
}
