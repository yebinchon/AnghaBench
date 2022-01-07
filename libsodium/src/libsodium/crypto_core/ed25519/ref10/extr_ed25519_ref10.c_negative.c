
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static unsigned char
negative(signed char b)
{

    uint64_t x = b;

    x >>= 63;

    return x;
}
