
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct st_golombset_encode_t {int dummy; } ;


 scalar_t__ golombset_encode_bit (struct st_golombset_encode_t*,int) ;
 int golombset_encode_bits (struct st_golombset_encode_t*,unsigned int,unsigned int) ;

__attribute__((used)) static int golombset_encode_value(struct st_golombset_encode_t *ctx, unsigned fixed_bits, uint64_t value)
{

    uint64_t unary_bits = value >> fixed_bits;
    for (; unary_bits != 0; --unary_bits)
        if (golombset_encode_bit(ctx, 0) != 0)
            return -1;
    if (golombset_encode_bit(ctx, 1) != 0)
        return -1;

    return golombset_encode_bits(ctx, fixed_bits, value);
}
