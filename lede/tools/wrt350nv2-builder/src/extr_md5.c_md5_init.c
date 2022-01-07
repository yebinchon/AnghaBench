
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* abcd; scalar_t__* count; } ;
typedef TYPE_1__ md5_state_t ;


 int T_MASK ;

void
md5_init(md5_state_t *pms)
{
    pms->count[0] = pms->count[1] = 0;
    pms->abcd[0] = 0x67452301;
    pms->abcd[1] = T_MASK ^ 0x10325476;
    pms->abcd[2] = T_MASK ^ 0x67452301;
    pms->abcd[3] = 0x10325476;
}
