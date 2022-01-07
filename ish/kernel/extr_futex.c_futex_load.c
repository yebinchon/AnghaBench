
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct futex {scalar_t__ mem; int addr; } ;
typedef int dword_t ;
struct TYPE_2__ {scalar_t__ mem; } ;


 int MEM_READ ;
 int assert (int) ;
 TYPE_1__* current ;
 int * mem_ptr (scalar_t__,int ,int ) ;

__attribute__((used)) static int futex_load(struct futex *futex, dword_t *out) {
    assert(futex->mem == current->mem);
    dword_t *ptr = mem_ptr(current->mem, futex->addr, MEM_READ);
    if (ptr == ((void*)0))
        return 1;
    *out = *ptr;
    return 0;
}
