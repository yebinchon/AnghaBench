
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ base; int size; } ;
typedef TYPE_1__ escrypt_region_t ;


 int free (scalar_t__) ;
 int init_region (TYPE_1__*) ;
 scalar_t__ munmap (scalar_t__,int ) ;

int
escrypt_free_region(escrypt_region_t *region)
{
    if (region->base) {





        free(region->base);

    }
    init_region(region);

    return 0;
}
