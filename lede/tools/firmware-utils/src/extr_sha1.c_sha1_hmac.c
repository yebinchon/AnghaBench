
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int uchar ;
typedef int sha1_context ;


 int memset (int *,int,int) ;
 int sha1_finish (int *,int *) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,int *,int) ;

void sha1_hmac( uchar *key, uint keylen, uchar *buf, uint buflen,
                uchar digest[20] )
{
    uint i;
    sha1_context ctx;
    uchar k_ipad[64];
    uchar k_opad[64];
    uchar tmpbuf[20];

    memset( k_ipad, 0x36, 64 );
    memset( k_opad, 0x5C, 64 );

    for( i = 0; i < keylen; i++ )
    {
        if( i >= 64 ) break;

        k_ipad[i] ^= key[i];
        k_opad[i] ^= key[i];
    }

    sha1_starts( &ctx );
    sha1_update( &ctx, k_ipad, 64 );
    sha1_update( &ctx, buf, buflen );
    sha1_finish( &ctx, tmpbuf );

    sha1_starts( &ctx );
    sha1_update( &ctx, k_opad, 64 );
    sha1_update( &ctx, tmpbuf, 20 );
    sha1_finish( &ctx, digest );

    memset( k_ipad, 0, 64 );
    memset( k_opad, 0, 64 );
    memset( tmpbuf, 0, 20 );
    memset( &ctx, 0, sizeof( sha1_context ) );
}
