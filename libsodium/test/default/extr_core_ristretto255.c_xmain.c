
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ crypto_core_ed25519_BYTES ;
 scalar_t__ crypto_core_ed25519_NONREDUCEDSCALARBYTES ;
 scalar_t__ crypto_core_ed25519_SCALARBYTES ;
 int crypto_core_ed25519_UNIFORMBYTES ;
 scalar_t__ crypto_core_ristretto255_BYTES ;
 scalar_t__ crypto_core_ristretto255_HASHBYTES ;
 scalar_t__ crypto_core_ristretto255_NONREDUCEDSCALARBYTES ;
 scalar_t__ crypto_core_ristretto255_SCALARBYTES ;
 scalar_t__ crypto_core_ristretto255_bytes () ;
 scalar_t__ crypto_core_ristretto255_hashbytes () ;
 scalar_t__ crypto_core_ristretto255_nonreducedscalarbytes () ;
 scalar_t__ crypto_core_ristretto255_scalarbytes () ;
 int printf (char*) ;
 int tv1 () ;
 int tv2 () ;
 int tv3 () ;
 int tv4 () ;

int
main(void)
{
    tv1();
    tv2();
    tv3();
    tv4();

    assert(crypto_core_ristretto255_BYTES == crypto_core_ristretto255_bytes());
    assert(crypto_core_ristretto255_SCALARBYTES == crypto_core_ristretto255_scalarbytes());
    assert(crypto_core_ristretto255_NONREDUCEDSCALARBYTES == crypto_core_ristretto255_nonreducedscalarbytes());
    assert(crypto_core_ristretto255_NONREDUCEDSCALARBYTES >= crypto_core_ristretto255_SCALARBYTES);
    assert(crypto_core_ristretto255_HASHBYTES == crypto_core_ristretto255_hashbytes());
    assert(crypto_core_ristretto255_HASHBYTES >= crypto_core_ristretto255_BYTES);
    assert(crypto_core_ristretto255_BYTES == crypto_core_ed25519_BYTES);
    assert(crypto_core_ristretto255_SCALARBYTES == crypto_core_ed25519_SCALARBYTES);
    assert(crypto_core_ristretto255_NONREDUCEDSCALARBYTES == crypto_core_ed25519_NONREDUCEDSCALARBYTES);
    assert(crypto_core_ristretto255_HASHBYTES >= 2 * crypto_core_ed25519_UNIFORMBYTES);

    printf("OK\n");

    return 0;
}
