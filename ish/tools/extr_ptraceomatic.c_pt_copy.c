
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte_t ;
typedef scalar_t__ addr_t ;


 int pt_write8 (int,scalar_t__,int ) ;
 int user_get (scalar_t__,int ) ;

__attribute__((used)) static void pt_copy(int pid, addr_t start, size_t size) {
    if (start == 0)
        return;
    byte_t byte;
    for (addr_t addr = start; addr < start + size; addr++) {
        (void) user_get(addr, byte);
        pt_write8(pid, addr, byte);
    }
}
