
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte_t ;
typedef int byte ;
typedef scalar_t__ addr_t ;


 int pt_readn (int,scalar_t__,int *,int) ;
 int user_put (scalar_t__,int ) ;

__attribute__((used)) static void pt_copy_to_real(int pid, addr_t start, size_t size) {
    byte_t byte;
    for (addr_t addr = start; addr < start + size; addr++) {
        pt_readn(pid, addr, &byte, sizeof(byte));
        (void) user_put(addr, byte);
    }
}
