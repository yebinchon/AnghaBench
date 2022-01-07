
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct st_golombset_decode_t {int dummy; } ;


 int golombset_decode_bit (struct st_golombset_decode_t*) ;
 int golombset_decode_bits (struct st_golombset_decode_t*,unsigned int,unsigned int*) ;

__attribute__((used)) static int golombset_decode_value(struct st_golombset_decode_t *ctx, unsigned fixed_bits, uint64_t *value)
{
    uint64_t q;
    int bit;


    for (q = 0; ; ++q) {
        if ((bit = golombset_decode_bit(ctx)) == -1)
            return -1;
        if (bit)
            break;
    }

    if (golombset_decode_bits(ctx, fixed_bits, value) == -1)
        return -1;

    *value += q << fixed_bits;

    return 0;
}
