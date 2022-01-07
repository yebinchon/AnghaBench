
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stir ) () ;} ;


 TYPE_1__* implementation ;
 int randombytes_init_if_needed () ;
 int stub1 () ;

void
randombytes_stir(void)
{
    randombytes_init_if_needed();
    if (implementation->stir != ((void*)0)) {
        implementation->stir();
    }
}
