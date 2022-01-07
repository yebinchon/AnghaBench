
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* implementation_name ) () ;} ;


 TYPE_1__* implementation ;
 int randombytes_init_if_needed () ;
 char const* stub1 () ;

const char *
randombytes_implementation_name(void)
{
    randombytes_init_if_needed();
    return implementation->implementation_name();
}
