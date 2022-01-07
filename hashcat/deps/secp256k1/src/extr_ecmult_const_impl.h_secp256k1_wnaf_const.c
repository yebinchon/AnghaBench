
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_scalar ;


 int VERIFY_CHECK (int) ;
 int WNAF_SIZE_BITS (int,int) ;
 int secp256k1_scalar_cadd_bit (int *,int,int) ;
 int secp256k1_scalar_cond_negate (int *,int) ;
 int secp256k1_scalar_is_even (int const*) ;
 int secp256k1_scalar_is_high (int const*) ;
 int secp256k1_scalar_is_one (int *) ;
 int secp256k1_scalar_is_zero (int *) ;
 int secp256k1_scalar_negate (int *,int const*) ;
 int secp256k1_scalar_shr_int (int *,int) ;

__attribute__((used)) static int secp256k1_wnaf_const(int *wnaf, const secp256k1_scalar *scalar, int w, int size) {
    int global_sign;
    int skew = 0;
    int word = 0;


    int u_last;
    int u;

    int flip;
    int bit;
    secp256k1_scalar s;
    int not_neg_one;

    VERIFY_CHECK(w > 0);
    VERIFY_CHECK(size > 0);
    flip = secp256k1_scalar_is_high(scalar);

    bit = flip ^ !secp256k1_scalar_is_even(scalar);

    secp256k1_scalar_negate(&s, scalar);
    not_neg_one = !secp256k1_scalar_is_one(&s);
    s = *scalar;
    secp256k1_scalar_cadd_bit(&s, bit, not_neg_one);





    global_sign = secp256k1_scalar_cond_negate(&s, flip);
    global_sign *= not_neg_one * 2 - 1;
    skew = 1 << bit;


    u_last = secp256k1_scalar_shr_int(&s, w);
    do {
        int sign;
        int even;


        u = secp256k1_scalar_shr_int(&s, w);

        even = ((u & 1) == 0);
        sign = 2 * (u_last > 0) - 1;
        u += sign * even;
        u_last -= sign * even * (1 << w);


        wnaf[word++] = u_last * global_sign;

        u_last = u;
    } while (word * w < size);
    wnaf[word] = u * global_sign;

    VERIFY_CHECK(secp256k1_scalar_is_zero(&s));
    VERIFY_CHECK(word == WNAF_SIZE_BITS(size, w));
    return skew;
}
