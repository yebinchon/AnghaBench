
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_c0_perfcnt (int ) ;
 int write_c0_perfctrl (int ) ;

__attribute__((used)) static void reset_counters(void *arg)
{
 write_c0_perfctrl(0);
 write_c0_perfcnt(0);
}
