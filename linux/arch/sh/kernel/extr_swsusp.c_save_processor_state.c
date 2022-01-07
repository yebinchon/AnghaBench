
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int init_fpu (int ) ;

void save_processor_state(void)
{
 init_fpu(current);
}
