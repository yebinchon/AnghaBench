
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_hook (int *,int *) ;
 int libc_hook_ran ;
 int test_hooks_libc_hook ;

__attribute__((used)) static void
libc_reentrancy_hook() {
 do_hook(&libc_hook_ran, &test_hooks_libc_hook);
}
