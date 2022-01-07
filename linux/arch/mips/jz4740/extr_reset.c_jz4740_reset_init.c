
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_halt ;
 int jz4740_halt ;

void jz4740_reset_init(void)
{
 _machine_halt = jz4740_halt;
}
