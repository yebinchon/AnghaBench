
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * region; int * pseudo_rands; } ;
typedef TYPE_1__ argon2_instance_t ;


 int ARGON2_FLAG_CLEAR_MEMORY ;
 int clear_memory (TYPE_1__*,int) ;
 int free (int *) ;
 int free_memory (int *) ;

__attribute__((used)) static void
argon2_free_instance(argon2_instance_t *instance, int flags)
{

    clear_memory(instance, flags & ARGON2_FLAG_CLEAR_MEMORY);


    free(instance->pseudo_rands);
    instance->pseudo_rands = ((void*)0);
    free_memory(instance->region);
    instance->region = ((void*)0);
}
