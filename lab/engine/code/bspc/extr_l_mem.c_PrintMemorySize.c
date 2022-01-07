
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_Print (char*,...) ;

void PrintMemorySize(unsigned long size)
{
 unsigned long number1, number2, number3;
 number1 = size >> 20;
 number2 = (size & 0xFFFFF) >> 10;
 number3 = (size & 0x3FF);
 if (number1) Log_Print("%ld MB", number1);
 if (number1 && number2) Log_Print(" and ");
 if (number2) Log_Print("%ld KB", number2);
 if (number2 && number3) Log_Print(" and ");
 if (number3) Log_Print("%ld bytes", number3);
}
