
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* lasat_int_mask ;
 unsigned long* lasat_int_status ;

__attribute__((used)) static unsigned long get_int_status_100(void)
{
 return *lasat_int_status & *lasat_int_mask;
}
