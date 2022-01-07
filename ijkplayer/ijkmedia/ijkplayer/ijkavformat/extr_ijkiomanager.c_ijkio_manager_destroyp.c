
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkIOManagerContext ;


 int ijkio_manager_destroy (int *) ;

void ijkio_manager_destroyp(IjkIOManagerContext **ph)
{
    if (!ph || !*ph)
        return;

    ijkio_manager_destroy(*ph);
    *ph = ((void*)0);
}
