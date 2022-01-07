
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ total_stack_bytes ;

__attribute__((used)) static bool
tcache_bin_lowbits_overflowable(void *ptr) {
 uint32_t lowbits = (uint32_t)((uintptr_t)ptr + total_stack_bytes);
 return lowbits < (uint32_t)(uintptr_t)ptr;
}
