
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_context ;


 int md5_hmac_finish (int *,unsigned char*) ;
 int md5_hmac_starts (int *,unsigned char*,int) ;
 int md5_hmac_update (int *,unsigned char*,int) ;
 int memset (int *,int ,int) ;

void md5_hmac( unsigned char *key, int keylen, unsigned char *input, int ilen,
               unsigned char output[16] )
{
    md5_context ctx;

    md5_hmac_starts( &ctx, key, keylen );
    md5_hmac_update( &ctx, input, ilen );
    md5_hmac_finish( &ctx, output );

    memset( &ctx, 0, sizeof( md5_context ) );
}
