
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hook_alloc_t ;



__attribute__((used)) static void
noop_alloc_hook(void *extra, hook_alloc_t type, void *result,
    uintptr_t result_raw, uintptr_t args_raw[3]) {
}
