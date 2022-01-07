
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier_nospec_enabled ;
 int do_barrier_nospec_fixups (int) ;

__attribute__((used)) static void enable_barrier_nospec(bool enable)
{
 barrier_nospec_enabled = enable;
 do_barrier_nospec_fixups(enable);
}
