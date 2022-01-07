
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline long i2l(long v)
{
    return v | ((v ^ 0xabcd) << 32);
}
