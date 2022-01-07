
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t dword_t ;
typedef size_t addr_t ;


 size_t strings_size (char const*) ;
 scalar_t__ user_write (size_t,char const*,size_t) ;

__attribute__((used)) static inline dword_t copy_strings(addr_t sp, const char *strings) {
    size_t size = strings_size(strings);
    sp -= size;
    if (user_write(sp, strings, size))
        return 0;
    return sp;
}
