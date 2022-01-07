
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef unsigned char* sds ;
struct TYPE_2__ {int len; } ;


 TYPE_1__* SDS_HDR (int,unsigned char*) ;





 size_t SDS_TYPE_BITS ;
 unsigned char SDS_TYPE_MASK ;

__attribute__((used)) static inline void sdssetlen(sds s, size_t newlen) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case 130:
            {
                unsigned char *fp = ((unsigned char*)s)-1;
                *fp = (unsigned char)(130 | (newlen << SDS_TYPE_BITS));
            }
            break;
        case 128:
            SDS_HDR(8,s)->len = (uint8_t)newlen;
            break;
        case 132:
            SDS_HDR(16,s)->len = (uint16_t)newlen;
            break;
        case 131:
            SDS_HDR(32,s)->len = (uint32_t)newlen;
            break;
        case 129:
            SDS_HDR(64,s)->len = (uint64_t)newlen;
            break;
    }
}
