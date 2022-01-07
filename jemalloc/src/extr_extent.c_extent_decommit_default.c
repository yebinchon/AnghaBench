
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extent_hooks_t ;


 int pages_decommit (void*,size_t) ;

__attribute__((used)) static bool
extent_decommit_default(extent_hooks_t *extent_hooks, void *addr, size_t size,
    size_t offset, size_t length, unsigned arena_ind) {
 return pages_decommit((void *)((uintptr_t)addr + (uintptr_t)offset),
     length);
}
