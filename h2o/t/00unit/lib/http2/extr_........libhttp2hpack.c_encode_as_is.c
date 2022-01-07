
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 char* h2o_hpack_encode_int (char*,size_t,int) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static size_t encode_as_is(uint8_t *dst, const char *s, size_t len)
{
    uint8_t *start = dst;
    *dst = '\0';
    dst = h2o_hpack_encode_int(dst, len, 7);
    memcpy(dst, s, len);
    dst += len;
    return dst - start;
}
