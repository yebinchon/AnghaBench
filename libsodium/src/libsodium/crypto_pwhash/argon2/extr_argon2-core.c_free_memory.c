
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* base; int size; } ;
typedef TYPE_1__ block_region ;


 int free (TYPE_1__*) ;
 scalar_t__ munmap (TYPE_1__*,int ) ;

__attribute__((used)) static void
free_memory(block_region *region)
{
    if (region && region->base) {





        free(region->base);

    }
    free(region);
}
