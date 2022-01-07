
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void memzero(void *data, size_t size)
{
 volatile uint8_t *scan = (volatile uint8_t *)data;

 while (size--)
  *scan++ = 0x0;
}
