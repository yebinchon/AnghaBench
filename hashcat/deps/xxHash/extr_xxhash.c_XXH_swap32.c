
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;



__attribute__((used)) static U32 XXH_swap32 (U32 x)
{
    return ((x << 24) & 0xff000000 ) |
            ((x << 8) & 0x00ff0000 ) |
            ((x >> 8) & 0x0000ff00 ) |
            ((x >> 24) & 0x000000ff );
}
