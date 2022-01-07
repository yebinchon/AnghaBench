
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cpu_to_be64 (int ) ;

__attribute__((used)) static int imc_mem_get(void *data, u64 *val)
{
 *val = cpu_to_be64(*(u64 *)data);
 return 0;
}
