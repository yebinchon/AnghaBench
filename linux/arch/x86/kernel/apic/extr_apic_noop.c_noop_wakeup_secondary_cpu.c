
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int noop_wakeup_secondary_cpu(int apicid, unsigned long start_eip)
{
 return -1;
}
