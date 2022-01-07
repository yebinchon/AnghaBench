
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ addr_t ;


 scalar_t__ user_write (scalar_t__,char const*,int) ;

int user_write_string(addr_t addr, const char *buf) {
    if (addr == 0)
        return 1;
    size_t i = 0;
    while (buf[i] != '\0') {
        if (user_write(addr + i, &buf[i], sizeof(buf[i])))
            return 1;
        i++;
    }
    if (user_write(addr + i, &buf[i], sizeof(buf[i])))
        return 1;
    return 0;
}
