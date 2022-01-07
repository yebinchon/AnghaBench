
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct st_golombset_encode_t {int dummy; } ;


 scalar_t__ golombset_encode_bit (struct st_golombset_encode_t*,unsigned int) ;

__attribute__((used)) static int golombset_encode_bits(struct st_golombset_encode_t *ctx, unsigned bits, uint64_t value)
{
    if (bits != 0) {
        do {
            --bits;
            if (golombset_encode_bit(ctx, (value >> bits) & 1) != 0)
                return -1;
        } while (bits != 0);
    }
    return 0;
}
