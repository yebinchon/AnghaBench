
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COMMON_CODE (int,int) ;
 int assert (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static uint8_t *encode_status(uint8_t *dst, int status)
{


    assert(100 <= status && status <= 999);

    switch (status) {




        case 200: *dst++ = 0x80 | 8; break;
        case 204: *dst++ = 0x80 | 9; break;
        case 206: *dst++ = 0x80 | 10; break;
        case 304: *dst++ = 0x80 | 11; break;
        case 400: *dst++ = 0x80 | 12; break;
        case 404: *dst++ = 0x80 | 13; break;
        case 500: *dst++ = 0x80 | 14; break;

    default:

        *dst++ = 8;
        *dst++ = 3;
        sprintf((char *)dst, "%d", status);
        dst += 3;
        break;
    }

    return dst;
}
