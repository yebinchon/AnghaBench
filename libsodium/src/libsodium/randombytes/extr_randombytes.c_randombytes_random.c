
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* random ) () ;} ;


 TYPE_1__* implementation ;
 int randombytes_init_if_needed () ;
 int stub1 () ;

uint32_t
randombytes_random(void)
{
    randombytes_init_if_needed();
    return implementation->random();
}
