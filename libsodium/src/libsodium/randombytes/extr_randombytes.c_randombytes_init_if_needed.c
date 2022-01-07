
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; int stir; int random; int implementation_name; } ;
typedef TYPE_1__ randombytes_implementation ;


 TYPE_1__* RANDOMBYTES_DEFAULT_IMPLEMENTATION ;
 TYPE_1__* implementation ;
 int javascript_buf ;
 int javascript_implementation_name ;
 int javascript_random ;
 int javascript_stir ;
 int randombytes_stir () ;

__attribute__((used)) static void
randombytes_init_if_needed(void)
{
    if (implementation == ((void*)0)) {
        implementation = RANDOMBYTES_DEFAULT_IMPLEMENTATION;

        randombytes_stir();
    }
}
