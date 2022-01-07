
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* base; int len; } ;
typedef TYPE_1__ uv_buf_t ;


 int alloc_buffer (int *,int,TYPE_1__*) ;
 int memset (int*,int ,int ) ;
 scalar_t__ random () ;

uv_buf_t make_discover_msg() {
    uv_buf_t buffer;
    alloc_buffer(((void*)0), 256, &buffer);
    memset(buffer.base, 0, buffer.len);


    buffer.base[0] = 0x1;

    buffer.base[1] = 0x1;

    buffer.base[2] = 0x6;

    buffer.base[3] = 0x0;

    buffer.base[4] = (unsigned int) random();

    buffer.base[8] = 0x0;

    buffer.base[10] = 0x80;





    buffer.base[28] = 0xe4;
    buffer.base[29] = 0xce;
    buffer.base[30] = 0x8f;
    buffer.base[31] = 0x13;
    buffer.base[32] = 0xf6;
    buffer.base[33] = 0xd4;




    buffer.base[236] = 99;
    buffer.base[237] = 130;
    buffer.base[238] = 83;
    buffer.base[239] = 99;


    buffer.base[240] = 53;
    buffer.base[241] = 1;
    buffer.base[242] = 1;


    buffer.base[243] = 55;
    buffer.base[244] = 4;
    buffer.base[245] = 1;
    buffer.base[246] = 3;
    buffer.base[247] = 15;
    buffer.base[248] = 6;

    return buffer;
}
