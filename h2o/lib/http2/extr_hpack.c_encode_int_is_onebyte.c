
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int encode_int_is_onebyte(int64_t value, unsigned prefix_bits)
{
    return value < (1 << prefix_bits) - 1;
}
