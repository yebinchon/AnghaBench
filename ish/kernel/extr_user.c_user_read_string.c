
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ addr_t ;


 scalar_t__ user_read (scalar_t__,char*,int) ;

int user_read_string(addr_t addr, char *buf, size_t max) {
    if (addr == 0)
        return 1;
    size_t i = 0;
    while (i < max) {
        if (user_read(addr + i, &buf[i], sizeof(buf[i])))
            return 1;
        if (buf[i] == '\0')
            break;
        i++;
    }
    return 0;
}
