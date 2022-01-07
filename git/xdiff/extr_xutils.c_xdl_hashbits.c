
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;

unsigned int xdl_hashbits(unsigned int size) {
 unsigned int val = 1, bits = 0;

 for (; val < size && bits < CHAR_BIT * sizeof(unsigned int); val <<= 1, bits++);
 return bits ? bits: 1;
}
