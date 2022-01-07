
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int save_and_clear_fpu () ;

void save_processor_state(void)
{
 save_and_clear_fpu();
}
