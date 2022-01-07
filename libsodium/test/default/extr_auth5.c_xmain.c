
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* a ;
 int assert (int) ;
 int* c ;
 int crypto_auth (int*,int*,unsigned int,int ) ;
 int crypto_auth_keygen (int ) ;
 scalar_t__ crypto_auth_verify (int*,int*,unsigned int,int ) ;
 int* guard_page ;
 int key ;
 int printf (char*,unsigned int) ;
 int rand () ;
 int randombytes_buf (int*,size_t) ;

int
main(void)
{
    size_t clen;

    for (clen = 0; clen < 1000; ++clen) {
        crypto_auth_keygen(key);
        randombytes_buf(c, clen);
        crypto_auth(a, c, clen, key);
        if (crypto_auth_verify(a, c, clen, key) != 0) {
            printf("fail %u\n", (unsigned int) clen);
            return 100;
        }
        if (clen > 0) {
            c[rand() % clen] += 1 + (rand() % 255);
            if (crypto_auth_verify(a, c, clen, key) == 0) {
                printf("forgery %u\n", (unsigned int) clen);
                return 100;
            }
            a[rand() % sizeof a] += 1 + (rand() % 255);
            if (crypto_auth_verify(a, c, clen, key) == 0) {
                printf("forgery %u\n", (unsigned int) clen);
                return 100;
            }
        }
    }

    crypto_auth_keygen(key);
    crypto_auth(a, guard_page, 0U, key);
    assert(crypto_auth_verify(a, guard_page, 0U, key) == 0);

    return 0;
}
