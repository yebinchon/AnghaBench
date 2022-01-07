
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int * aligned; int base; } ;
typedef TYPE_1__ escrypt_region_t ;



__attribute__((used)) static inline void
init_region(escrypt_region_t *region)
{
    region->base = region->aligned = ((void*)0);
    region->size = 0;
}
