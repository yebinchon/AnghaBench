#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  unsigned char* sds ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,unsigned char*) ; 
#define  SDS_TYPE_16 132 
#define  SDS_TYPE_32 131 
#define  SDS_TYPE_5 130 
#define  SDS_TYPE_64 129 
#define  SDS_TYPE_8 128 
 size_t SDS_TYPE_BITS ; 
 unsigned char SDS_TYPE_MASK ; 

__attribute__((used)) static inline void FUNC1(sds s, size_t newlen) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case SDS_TYPE_5:
            {
                unsigned char *fp = ((unsigned char*)s)-1;
                *fp = (unsigned char)(SDS_TYPE_5 | (newlen << SDS_TYPE_BITS));
            }
            break;
        case SDS_TYPE_8:
            FUNC0(8,s)->len = (uint8_t)newlen;
            break;
        case SDS_TYPE_16:
            FUNC0(16,s)->len = (uint16_t)newlen;
            break;
        case SDS_TYPE_32:
            FUNC0(32,s)->len = (uint32_t)newlen;
            break;
        case SDS_TYPE_64:
            FUNC0(64,s)->len = (uint64_t)newlen;
            break;
    }
}