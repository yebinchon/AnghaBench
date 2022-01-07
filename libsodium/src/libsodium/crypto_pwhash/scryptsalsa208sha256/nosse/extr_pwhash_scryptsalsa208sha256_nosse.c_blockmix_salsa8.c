
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int const escrypt_block_t ;


 int blkcpy_64 (int const*,int const*) ;
 int blkxor_64 (int const*,int const*) ;
 int salsa20_8 (int *) ;

__attribute__((used)) static void
blockmix_salsa8(const uint32_t *Bin, uint32_t *Bout, uint32_t *X, size_t r)
{
    size_t i;


    blkcpy_64((escrypt_block_t *) X,
              (const escrypt_block_t *) &Bin[(2 * r - 1) * 16]);


    for (i = 0; i < 2 * r; i += 2) {

        blkxor_64((escrypt_block_t *) X,
                  (const escrypt_block_t *) &Bin[i * 16]);
        salsa20_8(X);



        blkcpy_64((escrypt_block_t *) &Bout[i * 8],
                  (const escrypt_block_t *) X);


        blkxor_64((escrypt_block_t *) X,
                  (const escrypt_block_t *) &Bin[i * 16 + 16]);
        salsa20_8(X);



        blkcpy_64((escrypt_block_t *) &Bout[i * 8 + r * 16],
                  (escrypt_block_t *) X);
    }
}
