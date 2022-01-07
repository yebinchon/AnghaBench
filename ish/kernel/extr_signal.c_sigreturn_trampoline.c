
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ addr_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {scalar_t__ vdso; } ;


 TYPE_2__* current ;
 int die (char*) ;
 scalar_t__ vdso_symbol (char const*) ;

__attribute__((used)) static addr_t sigreturn_trampoline(const char *name) {
    addr_t sigreturn_addr = vdso_symbol(name);
    if (sigreturn_addr == 0) {
        die("sigreturn not found in vdso, this should never happen");
    }
    return current->mm->vdso + sigreturn_addr;
}
