
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void put32(uint8_t *buf, uint32_t val) {
 buf[0] = val >> 24;
 buf[1] = val >> 16;
 buf[2] = val >> 8;
 buf[3] = val;
}
