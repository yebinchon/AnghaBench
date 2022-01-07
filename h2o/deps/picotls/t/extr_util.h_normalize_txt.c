
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int memmove (char*,char*,size_t) ;

__attribute__((used)) static inline int normalize_txt(uint8_t *p, size_t len)
{
    uint8_t *const end = p + len, *dst = p;

    if (p == end)
        return 0;

    do {
        size_t block_len = *p++;
        if (end - p < block_len)
            return 0;
        memmove(dst, p, block_len);
        dst += block_len;
        p += block_len;
    } while (p != end);
    *dst = '\0';

    return 1;
}
