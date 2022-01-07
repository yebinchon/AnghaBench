
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword_t ;
typedef int addr_t ;



__attribute__((used)) static inline dword_t align_stack(addr_t sp) {
    return sp &~ 0xf;
}
