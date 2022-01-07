
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha1_context ;


 int memset (int *,int ,int) ;
 int sha1_hmac_finish (int *,unsigned char*) ;
 int sha1_hmac_starts (int *,unsigned char const*,size_t) ;
 int sha1_hmac_update (int *,unsigned char const*,size_t) ;

void sha1_hmac( const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char output[20] )
{
    sha1_context ctx;

    sha1_hmac_starts( &ctx, key, keylen );
    sha1_hmac_update( &ctx, input, ilen );
    sha1_hmac_finish( &ctx, output );

    memset( &ctx, 0, sizeof( sha1_context ) );
}
