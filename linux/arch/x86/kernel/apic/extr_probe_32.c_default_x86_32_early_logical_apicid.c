
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int default_x86_32_early_logical_apicid(int cpu)
{
 return 1 << cpu;
}
