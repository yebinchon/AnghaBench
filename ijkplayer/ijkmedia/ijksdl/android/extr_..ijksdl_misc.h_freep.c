
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) inline static void freep(void **mem)
{
    if (mem && *mem) {
        free(*mem);
        *mem = ((void*)0);
    }
}
