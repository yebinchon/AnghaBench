
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __bss_end__ ;
 int __bss_start__ ;
 int __data_end__ ;
 int __data_start__ ;
 int __etext ;
 int main () ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

void Reset_Handler(void)
{

  uint32_t data_bytes = (&__data_end__ - &__data_start__) * 4;
  memcpy(&__etext, &__data_start__, data_bytes);


  uint32_t bss_bytes = (&__bss_end__ - &__bss_start__) * 4;
  memset(&__bss_start__, 0, bss_bytes);

  main();
  while (1)
    ;
}
