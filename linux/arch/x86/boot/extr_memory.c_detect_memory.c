
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int detect_memory_88 () ;
 int detect_memory_e801 () ;
 int detect_memory_e820 () ;

void detect_memory(void)
{
 detect_memory_e820();

 detect_memory_e801();

 detect_memory_88();
}
