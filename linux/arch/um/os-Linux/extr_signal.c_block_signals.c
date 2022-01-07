
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier () ;
 scalar_t__ signals_enabled ;

void block_signals(void)
{
 signals_enabled = 0;






 barrier();
}
