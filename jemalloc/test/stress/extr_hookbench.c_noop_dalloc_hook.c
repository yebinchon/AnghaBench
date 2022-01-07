
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_dalloc_t ;



__attribute__((used)) static void
noop_dalloc_hook(void *extra, hook_dalloc_t type, void *address,
    uintptr_t args_raw[3]) {
}
