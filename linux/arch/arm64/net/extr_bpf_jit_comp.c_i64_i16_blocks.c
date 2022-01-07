
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int i64_i16_blocks(const u64 val, bool inverse)
{
 return (((val >> 0) & 0xffff) != (inverse ? 0xffff : 0x0000)) +
        (((val >> 16) & 0xffff) != (inverse ? 0xffff : 0x0000)) +
        (((val >> 32) & 0xffff) != (inverse ? 0xffff : 0x0000)) +
        (((val >> 48) & 0xffff) != (inverse ? 0xffff : 0x0000));
}
