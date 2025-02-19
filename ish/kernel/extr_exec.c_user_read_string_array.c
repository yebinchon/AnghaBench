
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ addr_t ;


 int _E2BIG ;
 int _EFAULT ;
 scalar_t__ user_get (scalar_t__,char) ;

__attribute__((used)) static int user_read_string_array(addr_t addr, char *buf, size_t max) {
    size_t i = 0;
    size_t p = 0;
    for (;;) {
        addr_t str_addr;
        if (user_get(addr + i * sizeof(addr_t), str_addr))
            return _EFAULT;
        if (str_addr == 0)
            break;
        size_t str_p = 0;
        for (;;) {
            if (p >= max)
                return _E2BIG;
            if (user_get(str_addr + str_p, buf[p]))
                return _EFAULT;
            str_p++;
            p++;
            if (buf[p - 1] == '\0')
                break;
        }
        i++;
    }
    if (p >= max)
        return _E2BIG;
    buf[p] = '\0';
    return 0;
}
