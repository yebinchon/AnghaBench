
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int h1940_gpiolib_to_latch(int offset)
{
 return 1 << (offset + 16);
}
