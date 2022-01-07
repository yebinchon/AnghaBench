
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_t ;
typedef int addr_t ;


 int STRACE (char*,int ,int ) ;

int_t sys_capset(addr_t header_addr, addr_t data_addr) {
    STRACE("capset(%#x, %#x)", header_addr, data_addr);
    return 0;
}
