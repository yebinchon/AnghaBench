
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 char const* itoa64 ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static int
decode64_one(uint32_t *dst, uint8_t src)
{
    const char *ptr = strchr(itoa64, src);

    if (ptr) {
        *dst = (uint32_t)(ptr - itoa64);
        return 0;
    }
    *dst = 0;

    return -1;
}
