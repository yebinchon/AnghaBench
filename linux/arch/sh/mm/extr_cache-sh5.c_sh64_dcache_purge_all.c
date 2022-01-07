
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sets; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 TYPE_2__* cpu_data ;
 int sh64_dcache_purge_sets (int ,int ) ;

__attribute__((used)) static void sh64_dcache_purge_all(void)
{

 sh64_dcache_purge_sets(0, cpu_data->dcache.sets);
}
