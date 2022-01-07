
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkIOManagerContext ;


 int ijkio_manager_alloc (int **,void*) ;

int ijkio_manager_create(IjkIOManagerContext **ph, void *opaque)
{
    return ijkio_manager_alloc(ph, opaque);
}
